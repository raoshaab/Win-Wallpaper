$url = "https://imagesbydev.dev-drive.workers.dev/api/v1/images"
$data1 = Invoke-WebRequest -Uri $url -UserAgent 'Mozilla/5.0'
$image = $data1.Content | ConvertFrom-Json
$path = "C:\Windows\Temp\rao.jpg"
Invoke-WebRequest -Uri $image -OutFile $path

$setwallpapersource = @"
using System.Runtime.InteropServices;
public class wallpaper
{
public const int SetDesktopWallpaper = 20;
public const int UpdateIniFile = 0x01;
public const int SendWinIniChange = 0x02;
[DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Auto)]
private static extern int SystemParametersInfo (int uAction, int uParam, string lpvParam, int fuWinIni);
public static void SetWallpaper ( string path )
{
SystemParametersInfo( SetDesktopWallpaper, 0, path, UpdateIniFile | SendWinIniChange );
}
}
"@

Add-Type -TypeDefinition $setwallpapersource
[wallpaper]::SetWallpaper('C:\Windows\Temp\rao.jpg')
