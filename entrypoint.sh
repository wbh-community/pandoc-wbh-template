#!/bin/sh

#helpFunction()
# {
#   # Display Helptext
#   echo -e "Usage: $0 [init <letter|techdoc>] [build] <OPTIONS>"
#   echo
#   echo -e "commands:"
#   echo -e "\tinit Initialize the folder with example files."
#   echo -e "\tbuild Build the Document from the given folder."
#   echo
#   echo "options:"
#   echo -e "\t-n Name of the project"
#   echo -e "\t-a Name of the project author"
#   echo -e "\t? Print this helpform"
#}
build=false
extendet=false
init=false
GREEN='\033[1;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

helpFunction()
{
   # Display Helptext
   echo -e "Usage: $0 [-i <letter|techdoc>] [-b] <OPTIONS>"
   echo
   echo "options:"
   echo -e "\t-i Initialize the folder with example files."
   echo -e "\t-b Build the document"
   echo -e "\t-e Create a build script for the Project."
   echo -e "\t? Print this helpform"
}

if [ -z "$*" ]
then
    helpFunction
fi

while getopts "ebi" opt
do
   case "$opt" in
      i ) init=true ;;
      b ) build=true ;;
      e ) extendet=true ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

checkEmptyDir() {
    if [ -d "." ]
    then
        if [ "$(ls -A .)" ]; then
            return 1
        fi
    fi
    return 0
}

createBuildsh() {
    cat > build.sh << EOF
#!/bin/sh

podman run -it --rm --volume "\$(pwd):/data" wbhdoc -b
EOF

chmod +x build.sh
}

createExampleFiles() {
    cp /example/* .
}

if $init
then
    echo "Initialize new Project"
    echo -n "Creating files..."
    if checkEmptyDir
    then
        createExampleFiles
        echo -e "\t${GREEN}done${NC}!"
    else
        echo -e "\t${RED}abort${NC}!"
        echo "Reason:"
        echo -e "\tDir is not empty!"
    fi
fi

if $build
then
    echo -n "Create document..."
    now=$(date +"%Y%m%d")

    if grep -q "^output-file" defaults.yaml
    then
        pandocrun=$(pandoc -d defaults.yaml)
    else
        extension=$(grep "to:" defaults.yaml| sed -e 's#.*: \(\)#\1#')
        pandocrun=$(pandoc -d defaults.yaml -o $now.$extension 2>&1 /dev/null)
    fi
    if [ -z "$pandocrun" ]
    then
        echo -e "\t${GREEN}done${NC}!"
    else
        echo -e "\t${RED}failed${NC}!"
        echo "Reason:"
        echo "$pandocrun"
    fi
fi

if $extendet
then
    echo -n "Create build script...."
    if test -f "./build.sh"
    then
        echo -e "\t${RED}abort${NC}!"
        echo "Reason:"
        echo -e "\tScript alwready exist!"
    else
        createBuildsh
        echo -e "\t${GREEN}done${NC}!"
    fi
fi
