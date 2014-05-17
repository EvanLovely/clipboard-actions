# Adds current Chrome tab's title and URL to Reminder note
tell application "Google Chrome"
  set tabname to get title of active tab of window 1
  set taburl to get URL of active tab of window 1
  tell application "Reminders"
    set newremin to make new reminder
    set name of newremin to the clipboard
    set body of newremin to tabname & " ~ " & taburl
  end tell
end tell
"New Reminder Made"
