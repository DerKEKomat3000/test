@echo off
set UserDownloadsPath=%USERPROFILE%\Downloads
set ImageURL=https://example.com/your_image_url.jpg
set BGImagePath=%UserDownloadsPath%\test.png

rem Download the image using curl
curl -o "%BGImagePath%" "%ImageURL%"

rem Set the desktop background
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%BGImagePath%" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
