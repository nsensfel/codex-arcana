#!/bin/bash

for file in $@; do
   gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
      -dNOPAUSE -dQUIET -dBATCH \
      -sOutputFile="$(basename "$file" .pdf)_smaller.pdf" "$file"
done
