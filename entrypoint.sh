#!/bin/sh
pandoc -s --pdf-engine=xelatex --template=/wbh.tex --metadata-file=/wbh-meta.yml README.md -o test.pdf