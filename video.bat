@echo off

timeout /t 5 /nobreak >nul

set UserDownloadsPath=%USERPROFILE%\Downloads
set GitHubRepoURL=https://raw.githubusercontent.com/DerKEKomat3000/test/main/RR.mp4
set BGImagePath=%UserDownloadsPath%\RR.mp4

if exist "%BGImagePath%" (

    goto :VIEW_VIDEO
)

rem Download the image using curl
curl -o "%BGImagePath%" "%GitHubRepoURL%"

:VIEW_VIDEO
start "Movies & TV" "%USERPROFILE%\Downloads\RR.mp4"
