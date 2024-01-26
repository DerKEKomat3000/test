@echo off
set UserDownloadsPath=%USERPROFILE%\Downloads
set BGImagePath=%UserDownloadsPath%\YourImage.jpg

reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%BGImagePath%" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
