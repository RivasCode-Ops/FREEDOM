@echo off
chcp 65001 >nul
title Freedom4
cd /d "%~dp0"

set "INDEX=%~dp0index.html"
if not exist "%INDEX%" (
  echo ERRO: index.html nao encontrado em %~dp0
  pause
  exit /b 1
)

:: Encerra servidor antigo na mesma porta (se existir)
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8765" ^| findstr "LISTENING"') do taskkill /F /PID %%a >nul 2>&1

echo Iniciando Freedom4...
start "Freedom4 Servidor" /MIN powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0Servidor-local.ps1"

set /a _tentativas=0
:aguarda
timeout /t 1 /nobreak >nul
set /a _tentativas+=1
powershell -NoProfile -Command "(Invoke-WebRequest -UseBasicParsing -Uri 'http://127.0.0.1:8765/' -TimeoutSec 2).StatusCode" >nul 2>&1
if %errorlevel%==0 goto abrir
if !_tentativas! lss 8 goto aguarda

echo Servidor nao respondeu. Abrindo arquivo direto no navegador...
start "" "%INDEX%"
echo.
echo Se o app nao salvar dados, use Iniciar-FREEDOM.bat novamente ou Iniciar-com-servidor.bat
pause
exit /b 0

:abrir
start "" "http://127.0.0.1:8765/"
echo.
echo Freedom4 aberto em http://127.0.0.1:8765/
echo Servidor minimizado na barra de tarefas ^("Freedom4 Servidor"^).
echo Feche essa janela do servidor para parar.
exit /b 0
