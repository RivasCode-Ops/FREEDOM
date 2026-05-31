@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo === Verificacao FREEDOM ===
echo.

if not exist "index.html" (
  echo [ERRO] index.html ausente
  exit /b 1
) else echo [OK] index.html

if not exist "Iniciar-FREEDOM.bat" (
  echo [ERRO] Iniciar-FREEDOM.bat ausente
  exit /b 1
) else echo [OK] Iniciar-FREEDOM.bat

powershell -NoProfile -Command "try { (Invoke-WebRequest -UseBasicParsing -Uri 'http://127.0.0.1:8765/' -TimeoutSec 2).StatusCode; exit 0 } catch { exit 1 }" >nul 2>&1
if %errorlevel%==0 (
  echo [OK] Servidor respondendo em http://127.0.0.1:8765/
) else (
  echo [--] Servidor nao esta rodando. Execute Iniciar-FREEDOM.bat
)

echo.
echo Verificacao concluida.
pause
