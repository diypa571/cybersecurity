@echo off

rem Reset permissions for all files and folders
icacls * /T /Q /C /RESET

rem Set permissions to 755 (read and execute for everyone, write for owner)
icacls * /T /Q /C /grant Everyone:(RX)
icacls * /T /Q /C /grant %USERNAME%:W



RUN IT... 
cd C:\Scripts permissins.cmd


