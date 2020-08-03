# offWindows10Updates

This script can help you to turn off Windows 10 updates.  
Tested on 1709, 1803, 1809, 1904 versions.

## Getting Started

* download [latest release](https://github.com/Tarasovych/offWindows10Updates/releases/tag/1.0)
* extract archive to any folder
* set up [Windows Task](#set-up-windows-task)

### Set up Windows Task

* open Task Sheduler
* click "Create Task" button
* on "General" tab
  * enter any name you like (e. g. "TurnOffWindowsUpdates")
  * "When runnings the task, use the following user account" - choose "SYSTEM" (read [this](https://superuser.com/a/1168592/739412) about safety)
  * tick "Hidden"
  * "Configure for" option - choose your OS
* on "Triggers" tab
  * press "New"
  * "Begin the task" option - choose "At startup"
  * "Repeat task every" option - choose 5 minutes (or any other frequency). I recommend to choose 5 minutes option to prevent all possible triggers, which might invoke Windows Update service as soon as possible
  * "for a duration of" option - choose "Indefinitely"
  * press "OK"
* on "Actions" tab
  * press "New"
  * "Action" option - choose "Start a program"
  * "Program/script" - select path to your [stopService.bat](stopService.bat) file
  * press "OK"
* press "OK" on "Create Task" window
You are done!

### Additional trigger setup

* on "Triggers" tab
  * press "New"
  * "Begin the task" - "On an event"
  * "Log" - "Microsoft-Windows-WindowsUpdateClient/Operational"
  * "Source" - "WindowsUpdateClient"
  * "Event ID" - [43](https://answers.microsoft.com/en-us/insider/forum/all/windows-update-event-triggers-confusion/12eb5c38-bbf1-4bcf-acde-df0005abaa8e)
