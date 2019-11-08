#!/bin/bash
if [[ ! $# -eq 4 ]]
then
   echo "usage: $0 <INPUT_FILE> <FIRST_PAGE> <LAST_PAGE> <OUTPUT_FILE>"
   exit -1
fi

gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH \
   -dFirstPage=$2 -dLastPage=$3 -sOutputFile=$4 $1
