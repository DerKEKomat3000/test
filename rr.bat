@echo off
set UserDownloadsPath=%USERPROFILE%\Downloads
set GitHubRepoURL=https://raw.githubusercontent.com/DerKEKomat3000/test/de6a8427f6f13ea2fe94db70e09ae7c4409b2c2c/rick.png
set BGImagePath=%UserDownloadsPath%\rick.png

rem Download the image using curl
curl -o "%BGImagePath%" "%GitHubRepoURL%"

rem Add a delay of 5 seconds (adjust as needed)
timeout /t 5 /nobreak >nul

rem Set the desktop background
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%BGImagePath%" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

rem Add a delay of 5 seconds (adjust as needed)
timeout /t 5 /nobreak >nul

rem Remove the downloaded image
del "%BGImagePath%"
