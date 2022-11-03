# LaTeX #################################################################
FROM docker.io/pandoc/core:latest as pitcde-latex

# NOTE: to maintainers, please keep this listing alphabetical.
RUN apk --no-cache update && apk --no-cache upgrade \
    && apk --no-cache add \
        freetype \
        fontconfig \
        gnupg \
        gzip \
        perl \
        tar \
        wget \
        xz

# DANGER: this will vary for different distributions, particularly the
# `linuxmusl` suffix. Alpine linux is a musl libc based distribution,
# for other "more common" distributions, you likely want just `-linux`
# suffix rather than `-linuxmusl` -----> vvvvvvvvv
ENV PATH="/opt/texlive/texdir/bin/x86_64-linuxmusl:${PATH}"
WORKDIR /root

# Installer scripts and config
COPY common/latex/texlive.profile /root/texlive.profile
COPY common/latex/install-texlive.sh /root/install-texlive.sh
COPY common/latex/packages.txt /root/packages.txt

# Request musl precompiled binary access
RUN echo "binary_x86_64-linuxmusl 1" >> /root/texlive.profile \
  && /root/install-texlive.sh \
  && sed -e 's/ *#.*$//' -e '/^ *$/d' /root/packages.txt | \
     xargs tlmgr install \
  && rm -f /root/texlive.profile \
           /root/install-texlive.sh \
           /root/packages.txt \
  && TERM=dumb luaotfload-tool --update \
  && chmod -R o+w /opt/texlive/texdir/texmf-var

# Puzzle ITC Template integration #########################################
FROM pitcde-latex as pitcde-pandoc
LABEL org.opencontainers.image.authors="Sebastian Preisner <kreativmonkey@calyruim.org>"

COPY template /templates
COPY entrypoint.sh /
COPY example /example
RUN mkdir -p /usr/share/fonts/truetype \
    && tar -xf /templates/Merriweather.tar.xz -C /usr/share/fonts/truetype/ \
    && rm -f /templates/Merriweather.tar.xz \
    && tar -xf /templates/arimo.tar.xz -C /usr/share/fonts/truetype/ \
    && rm -f /templates/arimo.tar.xz \
    && chmod 0644 -R /templates && chmod 0744 /entrypoint.sh \
    && fc-cache -f && rm -rf /var/cache/*

WORKDIR /data
ENV LANG=C.UTF-8

ENTRYPOINT [ "/bin/sh", "/entrypoint.sh" ]
