@echo off

set UserDownloadsPath=%USERPROFILE%\Downloads
set GitHubRepoURL=https://raw.githubusercontent.com/DerKEKomat3000/test/main/RR.mp4
set BGImagePath=%UserDownloadsPath%\RR.mp4

rem Download the image using curl
curl -o "%BGImagePath%" "%GitHubRepoURL%"

start "Movies & TV" "%USERPROFILE%\Downloads\RR.mp4"
