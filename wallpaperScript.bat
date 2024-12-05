@echo off
set currentDir=%cd%

set wallpaperPath=%currentDir%\downloadedWallpaper.png

if exist "%wallpaperPath%" (
    reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaperPath%" /f
    rundll32.exe user32.dll,UpdatePerUserSystemParameters
    echo haha
) else (
    echo Failed :(
)

exit
