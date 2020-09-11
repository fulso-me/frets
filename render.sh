#!/bin/bash

mkdir -p _out

for i in drawings/*.tex; do
  NAME=$(basename "${i}")

  sed -r -e 's|.*%autogen|\\input\{'"$i"'\}%autogen|' main.tex > tmpmain.tex
  # latex2png -d 900 tmpmain.tex
  # pdflatex tmpmain.tex > /dev/null 2>&1
  pdflatex tmpmain.tex
  pdf2svg tmpmain.pdf tmpmain.svg
  sed -r -e 's/width="[^"]*" height="[^"]*" //g' tmpmain.svg > _out/"${NAME%%.*}.svg"
  # mv tmpmain.png _out/"${NAME%%.*}.png"
done

rm -f tmpmain.*
rm -f *.aux
rm -f *.log
