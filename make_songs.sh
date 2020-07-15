#!/bin/bash

cd full_songs

echo 'Compiling all songs...'
latexmk -pdf ../tex_files/* > /dev/null 2>&1

echo 'Cleaning up extra files...'
find . -type f -not -name '*.pdf' -delete > /dev/null 2>&1

cd ../tex_files
find . -type f -not -name '*.tex' -delete

cd ../import
find . -type f -not -name '*.tex' -delete