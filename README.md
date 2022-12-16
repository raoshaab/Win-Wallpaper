# Win-Wallpaper
Windows Wallpaper Changes every hour, using python for downloading random wallpapers from unsplash then powershell script to set the desktpo wallpaper.    


### Requirement
python3 
unsplash api-key 

### Try Now

```
cd %appdata%
wget python.py
wget powershell.ps1

schtasks /create /sc hourly   /tn Wallpaper_change /tr "%appdata%/Win-Wallpaper/wallpaper.py"  /st 00:00
```

### Task scheduling with Windwos Task Scheduler
To schedule the task every hour, everyday .

