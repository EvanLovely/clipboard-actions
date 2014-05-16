tell application "Evernote"
	activate
	set body_text to the clipboard
	set new_note to create note with text body_text
	open note window with new_note
end tell