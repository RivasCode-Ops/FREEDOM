@echo off
chcp 65001 >nul
title Freedom4 - Servidor
cd /d "%~dp0"
set FREEDOM_NO_BROWSER=
call "%~dp0Iniciar-FREEDOM.bat"
