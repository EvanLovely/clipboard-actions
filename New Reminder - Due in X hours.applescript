# Use : to seperate todo's title from hours from now due. Example: "title: 3" make a todo called "title" due in 3 hours.
set _input to the clipboard
set {astid, AppleScript's text item delimiters} to {AppleScript's text item delimiters, ": "}
set {_name, _hours} to {text item 1 of _input, text item 2 of _input}
set AppleScript's text item delimiters to astid

tell application "Reminders"
	set _task to make new reminder with properties {name:_name,due date:((current date) + _hours * hours)}
	# @todo create and copy a URL to the newly made task after
end tell