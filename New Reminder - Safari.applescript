# Adds current Safari tab's title and URL to Reminder note
display notification "This can take a while..."
tell application "Safari"
  set tabname to get name of current tab of window 1
  set taburl to get URL of current tab of window 1
  tell application "Reminders"
    set newremin to make new reminder
    set name of newremin to the clipboard
    set body of newremin to tabname & " ~ " & taburl
  end tell
end tell
"New Reminder Made"