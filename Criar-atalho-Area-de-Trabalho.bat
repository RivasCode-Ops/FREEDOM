@echo off
chcp 65001 >nul
set "ROOT=%~dp0"
set "LAUNCHER=%ROOT%Iniciar-FREEDOM.bat"
set "DESKTOP=%USERPROFILE%\Desktop"
set "LINK=%DESKTOP%\Freedom4 FIRE.lnk"

powershell -NoProfile -Command ^
  "$s = (New-Object -ComObject WScript.Shell).CreateShortcut('%LINK%');" ^
  "$s.TargetPath = '%LAUNCHER%';" ^
  "$s.WorkingDirectory = '%ROOT%';" ^
  "$s.Description = 'Freedom4 FIRE Planner';" ^
  "$s.Save()"

if exist "%LINK%" (
  echo Atalho criado: %LINK%
) else (
  echo Nao foi possivel criar o atalho.
)
pause
