@echo off
chcp 65001 >nul
echo Encerrando servidor Freedom4 na porta 8765...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8765" ^| findstr "LISTENING"') do (
  taskkill /F /PID %%a >nul 2>&1
  echo PID %%a encerrado.
)
echo Concluido.
timeout /t 2 >nul
