import json 
import  urllib.request
import os
import subprocess

key   = 'Your_Key_here'
url   = "https://api.unsplash.com/photos/random?query=wallpaper-4k&order_by=latest&orientation=landscape&client_id="+key
data  = urllib.request.urlopen(url).read().decode()
#changes to raw for original 4k or 8k  resolution 
image = json.loads(data)['urls']['full']

path = r"C:\Windows\Temp\rao.jpg"
urllib.request.urlretrieve(image,path)
subprocess.call('%SystemRoot%/system32/WindowsPowerShell/v1.0/powershell.exe -ExecutionPolicy RemoteSigned -file "%appdata%/Win-Wallpaper/power_script.ps1"', shell=True)
