# Pass in the content to be worked. You'll be asked the Search and Replace terms after.
args="$(osascript -e 'text returned of (display dialog "Separate Terms with colon (:)" with title "Search and Replace" default answer "Search:Replace")')"
search="$(echo $args | sed 's,:.*,,')"
replace="$(echo $args | sed 's,.*:,,')"
pbpaste | sed "s,$search,$replace,g" | pbcopy