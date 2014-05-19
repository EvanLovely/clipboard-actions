# Whichever chat is open in the background gets this sent.
tell application "Adium" to send the active chat message the clipboard
"Message sent to active Adium chat"