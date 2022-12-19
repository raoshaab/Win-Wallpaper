# Win-Wallpaper
Windows Wallpaper Changes every hour, using python for downloading random wallpapers from unsplash then using powershell script to set the desktpo wallpaper.    


### Requirement
python3  
curl 

### Try Now

 ```
cd %appdata% && mkdir Win-Wallpaper 

curl -s https://raw.githubusercontent.com/raoshaab/Win-Wallpaper/main/wallpaper.py -o Win-Wallpaper/wallpaper.py
curl -s https://raw.githubusercontent.com/raoshaab/Win-Wallpaper/main/power_script.ps1 -o Win-Wallpaper/power_script.ps1
curl -s https://raw.githubusercontent.com/raoshaab/Win-Wallpaper/main/task_script.vbs -o Win-Wallpaper/task_script.vbs


schtasks /create /sc hourly   /tn Wallpaper_change_hour /tr "%appdata%/Win-Wallpaper/task_script.vbs" 
```

### Task scheduling with Windows Task Scheduler
To schedule the task every hour 
```
schtasks /create /sc hour /mo 1 /tn Wallpaper_change_hour /tr "%appdata%/Win-Wallpaper/task_script.vbs" 
```

To schedule the task every minute 
```
schtasks /create /sc minute /mo 1 /tn Wallpaper_change_minute /tr "%appdata%/Win-Wallpaper/task_script.vbs" 
```

To schedule the task every everyday 
```
schtasks /create /sc daily  /mo 1 /tn Wallpaper_change_everyday /tr "%appdata%/Win-Wallpaper/task_script.vbs" 
```
 
### To remove all tasks 

```
schtasks /delete tn Wallpaper_change_{hour/minute/everyday} /f
```

### To remove the script from system 

```
rmdir %appdata%/Win-Wallpaper 
```
