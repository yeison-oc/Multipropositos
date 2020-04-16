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
echo             +           [2] Creditos                   +
echo             +           [3] Salir                      +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +       USE EL TECLADO PARA NAVEGAR        +
echo             +             CORRECTAMENTE                +
echo             +                                          +
echo             +------------------------------------------+
echo.
echo.
echo.
echo.
echo.
CHOICE /n /c 123 /m ""
if errorlevel ==3 goto salir
if errorlevel ==2 goto creditos
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
echo             +           [1] Ver IPconfig (basico)      +
echo             +           [2] Programador de tareas      +
echo             +           [3] Conexiones de red          +
echo             +           [4] Menu principal             +
echo             +                                          +
echo             +------------------------------------------+
echo.
echo.
echo.
echo.
echo.
choice /n /c 1234 /m ""
if errorlevel ==4 goto menuPrincipal
if errorlevel ==3 goto conexionesRed
if errorlevel ==2 goto programadorTareas
if errorlevel ==1 goto verIPConfigBasico
::=======================================================
:conexionesRed
cls
echo.
echo Abriendo Conexiones de red
start ncpa.cpl
echo.
pause
goto:Posinstalacion
::=======================================================
:programadorTareas
cls
echo.
echo Abriendo Programador de Tareas de Windows
start taskschd
echo.
pause
goto:Posinstalacion
::=======================================================
:verIPConfigBasico
cls
echo.
ipconfig
echo.
pause
goto:Posinstalacion
::=======================================================
:creditos
cls
echo.
echo.
echo.
echo.
echo.
echo             +------------------------------------------+
echo             +                                          +
echo             +                CREDITOS                  +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +  Creado por Yeison Orozco C.             +
echo             +                                          +
echo             +  Este archivo es una demo de los         +
echo             +  comandos MS-DOS de Windows.             +
echo             +                                          +
echo             +  2019 - 2020                             +
echo             +                                          +
echo             +  [1] Mi perfil en Github                 +
echo             +  [2] Menu principal                      +
echo             +                                          +
echo             +------------------------------------------+
echo.
echo.
echo.
echo.
echo.
choice /n /c 12 /m ""
if errorlevel ==2 goto menuprincipal
if errorlevel ==1 goto miPerfilGithub
pause
goto:menuPrincipal
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
