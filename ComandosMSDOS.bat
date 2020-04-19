@echo off
title Multipropositos-Comandos-Bat
color 0a
:menuPrincipal
cls
echo.
echo.
echo                             BIENVENID@
echo.
echo.
echo             +------------------------------------------+
echo             +                                          +
echo             +                  MENU                    +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +           [1] Posinstalacion             +
echo             +           [2] Utilidades                 +
echo             +           [3] Salir                      +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +       USE EL TECLADO PARA NAVEGAR        +
echo             +             CORRECTAMENTE                +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +               2019 - 2020                +
echo             +                 V. 1.1                   +
echo             +                                          +
echo             +                               [4] Github +
echo             +------------------------------------------+
echo.
echo.
echo.
echo.
echo.
CHOICE /n /c 1234 /m ""
if errorlevel ==4 goto miPerfilGithub
if errorlevel ==3 goto salir
if errorlevel ==2 goto Utilidades
if errorlevel ==1 goto Posinstalacion




::=======================================================
:Posinstalacion
cls
echo.
echo.
echo.
echo.
echo.
echo             +------------------------------------------+
echo             +                                          +
echo             +              POSINSTALACION              +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +           [1] DriverPack                 +
echo             +           [2] Winrar (x86/x64)           +
echo             +           [3] VLC                        +
echo             +           [4] Quicktime                  +
echo             +           [5] Google Chrome              +
echo             +           [6] Firefox                    +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +           [7] Menu principal             +
echo             +                                          +
echo             +------------------------------------------+
echo.
echo.
echo.
echo.
echo.
choice /n /c 1234567 /m ""
if errorlevel ==7 goto menuPrincipal
if errorlevel ==6 goto Firefox
if errorlevel ==5 goto googleChrome
if errorlevel ==4 goto Quicktime
if errorlevel ==3 goto VLC
if errorlevel ==2 goto Winrar
if errorlevel ==1 goto DriverPack




::=======================================================
:Winrar
cls
echo.
echo Abriendo navegador...
echo.
start https://www.winrar.es/descargas
echo Listo!
echo.
pause
goto:Posinstalacion
::=======================================================
:DriverPack
cls
echo.
echo Abriendo navegador...
echo.
start https://driverpack.io/es
echo Listo!
echo.
pause
goto:Posinstalacion
::=======================================================
:VLC
cls
echo.
echo Abriendo navegador...
echo.
start https://www.videolan.org/vlc/
echo Listo!
echo.
pause
goto:Posinstalacion
::=======================================================
:Quicktime
cls
echo.
echo Abriendo navegador...
echo.
start https://support.apple.com/es_ES/downloads/quicktime
echo Listo!
echo.
pause
goto:Posinstalacion
::=======================================================
:googleChrome
cls
echo.
echo Abriendo navegador...
echo.
start https://www.google.com/intl/es/chrome/
echo Listo!
echo.
pause
goto:Posinstalacion
::=======================================================
:Firefox
cls
echo.
echo Abriendo navegador...
echo.
start https://www.mozilla.org/es-ES/firefox/new/
echo Listo!
echo.
pause
goto:Posinstalacion




::=======================================================
:Utilidades
cls
echo.
echo.
echo.
echo.
echo.
echo             +------------------------------------------+
echo             +                                          +
echo             +               UTILIDADES                 +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +           [1] Version de Windows         +
echo             +           [2] Programador de tareas      +
echo             +           [3] Firewall                   +
echo             +           [4] Menu principal             +
echo             +                                          +
echo             +------------------------------------------+
echo.
echo.
echo.
echo.
echo.
choice /n /c 1234 /m ""
if errorlevel ==4 goto menuprincipal
if errorlevel ==3 goto Firewall
if errorlevel ==2 goto programadorTareas
if errorlevel ==1 goto versionWindows
pause
goto:menuPrincipal




::=======================================================
:versionWindows
cls
echo.
start winver
echo.
pause
goto:Utilidades
::=======================================================
:Firewall
cls
echo.
echo Abriendo Firewall de Windows
start firewall.cpl
echo Listo!
echo.
pause
goto:Utilidades
::=======================================================
:programadorTareas
cls
echo.
echo Abriendo Programador de Tareas de Windows
start taskschd
echo Listo!
echo.
pause
goto:Utilidades




::=======================================================
:miPerfilGithub
cls
echo.
echo Abriendo navegador...
echo.
start https://github.com/yeison-oc
echo Listo!
echo.
pause
goto:menuPrincipal
::=======================================================
:salir
exit
::=======================================================
