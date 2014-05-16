tell application "System Events"
	set _taskname to the clipboard
end tell
tell application "OmniFocus"
	activate
	tell quick entry
		open
		set _task to make new inbox task with properties {name:first paragraph of _taskname}
		#		tell the note of _task
		#			insert "test note"
		#		end tell
	end tell
	delay 0.1
	tell application "System Events" to key code 48
	delay 0.1
	tell application "System Events" to key code 48
	delay 0.1
	tell application "System Events" to key code 48
end tell