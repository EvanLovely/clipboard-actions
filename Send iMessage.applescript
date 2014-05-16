# Create new blank iMessage with action text in body, ready to send to anyone
delay 0.1
tell application "Messages"
	activate
	tell application "System Events"
		keystroke "n" using {command down}
		key code 48
		key code 48
		keystroke "v" using {command down}
		delay 0.1
		key code 48 using {shift down}
		key code 48 using {shift down}
	end tell
end tell