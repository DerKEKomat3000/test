@echo off
setlocal enabledelayedexpansion

for /l %%i in (1, 1, 3) do (
    start cmd /c "curl parrot.live"
    timeout /nobreak /t 1 >nul
)

del "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\u.bat"

endlocal

