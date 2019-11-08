#!/bin/bash
for file in $@; do
   ffmpeg -i "$file" -codec copy "$(basename "$file" .aa).mp3"
done
