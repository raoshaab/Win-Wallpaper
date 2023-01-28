Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.Run "CMD /C START /B " & WinScriptHost.ExpandEnvironmentStrings("%SystemRoot%") & "\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy RemoteSigned -file " & "%appdata%\Win-Wallpaper\power_script.ps1", 0, False
Set WinScriptHost = Nothing
