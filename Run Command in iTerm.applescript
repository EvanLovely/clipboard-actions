# Switch to iTerm and execute a command
delay 0.1
tell application "iTerm"
	activate
	#delay 0.1
	tell i term application "System Events"
		keystroke "v" using {command down}
		key code 36
	end tell
end tell