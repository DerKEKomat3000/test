@echo off
set UserDownloadsPath=%USERPROFILE%\Downloads
set GitHubRepoURL=https://raw.githubusercontent.com/DerKEKomat3000/test/de6a8427f6f13ea2fe94db70e09ae7c4409b2c2c/rick.png
set BGImagePath=%UserDownloadsPath%\rick.png

rem Download the image using curl
curl -o "%BGImagePath%" "%GitHubRepoURL%"

rem Wait until the file is downloaded or timeout after 10 seconds
set TIMEOUT_SECONDS=10
set WAIT_SECONDS=2

:WAIT_LOOP
if not exist "%BGImagePath%" (
    timeout /t 1 /nobreak >nul
    set /A WAIT_SECONDS+=1
    if %WAIT_SECONDS% gtr %TIMEOUT_SECONDS% (
        echo Error: Image download timeout.
        exit /b 1
    )
    goto :WAIT_LOOP
)

rem Set the desktop background
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%BGImagePath%" /f
timeout /t 1 /nobreak >nul
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

rem Add a delay of 5 seconds (adjust as needed)
timeout /t 1 /nobreak >nul

rem Remove the downloaded image
del "%BGImagePath%"
