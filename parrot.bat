@echo off
setlocal enabledelayedexpansion

for /l %%i in (1, 1, 1) do (
    start cmd /c "curl parrot.live"
    timeout /nobreak /t 3 >nul
)

endlocal

