Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c stopService.bat"
oShell.Run strArgs, 0, false