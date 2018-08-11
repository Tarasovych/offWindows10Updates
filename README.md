# offWindows10Updates

This script can help you to turn off Windows 10 updates.

## Getting Started

* download [latest release](https://github.com/Tarasovych/offWindows10Updates/releases/tag/1.0)
* extract archive to any folder
* set up [Windows Task](#set-up-windows-task)

### Set up Windows Task

* open Task Sheduler
* click "Create Task" button
* on "General" tab
  * enter any name you like (e. g. "TurnOffWindowsUpdates")
* on "Triggers" tab
  * press "New"
  * "Begin the task" option - choose "At startup"
  * "Repeat task every" option - choose 5 minutes
  * press "OK"
* on "Actions" tab
  * press "New"
  * "Action" option - choose "Start a program"
  * "Program/script" - select path to your `runInBackground.vbs` file
  * press "OK"
* press "OK" on "Create Task" window
You are done!
