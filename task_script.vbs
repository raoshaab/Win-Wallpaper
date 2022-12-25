Dim WinScriptHost
Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.Run Chr(34) & "%appdata%\Win-Wallpaper\power_script.ps1" & Chr(34), 0
Set WinScriptHost = Nothing
