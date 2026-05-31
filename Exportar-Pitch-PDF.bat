@echo off
chcp 65001 >nul
cd /d "%~dp0"
set "HTML=%~dp0pitch-deck.html"
set "PDF=%~dp0Freedom4-Pitch.pdf"
set "URI=file:///C:/_PROJETOS/FREEDOM/pitch-deck.html"

if not exist "%HTML%" (
  echo pitch-deck.html nao encontrado.
  pause
  exit /b 1
)

where msedge >nul 2>&1
if %errorlevel%==0 (
  echo Gerando PDF com Microsoft Edge...
  msedge --headless --disable-gpu --no-pdf-header-footer --print-to-pdf="%PDF%" "%URI%"
  if exist "%PDF%" (
    echo OK: %PDF%
    start "" "%PDF%"
    exit /b 0
  )
)

where chrome >nul 2>&1
if %errorlevel%==0 (
  echo Gerando PDF com Chrome...
  chrome --headless --disable-gpu --no-pdf-header-footer --print-to-pdf="%PDF%" "%URI%"
  if exist "%PDF%" (
    echo OK: %PDF%
    start "" "%PDF%"
    exit /b 0
  )
)

echo Navegador headless nao gerou o PDF.
echo Abrindo pitch para salvar manualmente: Ctrl+P -^> Salvar como PDF
start "" "%HTML%"
pause
