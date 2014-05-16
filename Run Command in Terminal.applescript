# Switch to Terminal and execute a command
set cmd to the clipboard
tell application "Terminal"
	activate
	set theTab to selected tab in first window
	do script cmd in theTab
end tell