@echo off
chcp 65001 >nul
cd /d "%~dp0"
copy /Y "index.html" "freedom4-fire-app.html" >nul
if %errorlevel%==0 (
  echo freedom4-fire-app.html sincronizado com index.html
) else (
  echo Falha ao sincronizar.
  exit /b 1
)
