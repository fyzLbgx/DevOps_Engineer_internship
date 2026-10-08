#!/bin/bash

echo "hint search word 'ERROR'"

read -p "Enter the word you want to check (e.g., ERROR): " SEARCH_WORD

URL="https://gist.github.com/fyzLbgx/218786efc1e7f0867bac36f92512377a/raw/error.log"

curl -sL "$URL" | grep "$SEARCH_WORD"
