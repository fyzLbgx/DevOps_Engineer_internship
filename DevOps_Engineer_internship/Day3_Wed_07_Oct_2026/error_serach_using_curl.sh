#!/bin/bash


# just hosted a publc gist in github and all this script does is fetch that url using curl without downloading  the file search inside the file using using grep utility $SEARCHWORD is a user defined variable  we used read -p to get it from user 

echo "hint search word 'ERROR'"

read -p "Enter the word you want to check (e.g ERROR): "  SEARCH_WORD

URL="https://gist.github.com/fyzLbgx/218786efc1e7f0867bac36f92512377a/raw/error.log"

curl -sL "$URL" | grep "$SEARCH_WORD"
