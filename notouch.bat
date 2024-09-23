@echo off
echo Touchscreen wird deaktiviert...

:: PowerShell-Skript, um den Touchscreen zu deaktivieren
PowerShell -Command "Get-PnpDevice | Where-Object { $_.FriendlyName -like '*Touch Screen*' } | Disable-PnpDevice -Confirm:$false"

echo Touchscreen deaktiviert.
pause