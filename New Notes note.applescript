# Makes a new Note. Accepts HTML.
set _body to the clipboard
tell application "Notes"
	activate
	set theAccount to name of first account
	tell account theAccount
		set theFolder to name of first folder
		set myNote to (make new note at folder theFolder with properties {body:_body})
		
		set name of myNote to first paragraph of _body
	end tell
end tell