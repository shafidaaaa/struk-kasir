@echo off
cd /d "C:\Users\L Cell\kasir\"
start python -m http.server 8080 --bind 0.0.0.0
::start "Server Kasir" python -m http.server 8080 --bind 0.0.0.0
timeout /t 2 /nobreak >nul
start "" "C:\Program Files\Mozilla Firefox\firefox.exe" http://192.168.1.3:8080
pause