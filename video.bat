@echo off

rem Decrease volume by 10
rem sndvol.exe /changevolume -100

rem Increase volume by 10
sndvol.exe /changevolume +50

set UserDownloadsPath=%USERPROFILE%\Downloads
set GitHubRepoURL=https://raw.githubusercontent.com/DerKEKomat3000/test/main/RR.mp4
set BGImagePath=%UserDownloadsPath%\RR.mp4

rem Download the image using curl
curl -o "%BGImagePath%" "%GitHubRepoURL%"

