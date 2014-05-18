# " " => "_"
pbpaste | sed 's/ /_/g' | pbcopy
echo "Copied"
