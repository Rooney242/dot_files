#!/bin/bash

cd full_songs

echo 'Compiling all songs...'
latexmk -pdf > /dev/null 2>&1

echo 'Cleaning up extra files...'
latexmk -c * > /dev/null 2>&1

cd ../tex_files

latexmk -C * > /dev/null 2>&1