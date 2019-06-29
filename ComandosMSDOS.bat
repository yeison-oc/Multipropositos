@echo off
title Practica con MS-DOS [ YEISON OROZCO ]
color f0
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
echo             +           [1] Utilidades                 +
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
CHOICE /N /C 1234 /M ""
if errorlevel ==3 goto salir
if errorlevel ==2 goto creditos
if errorlevel ==1 goto utilidades
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
echo             +  Creado por Yeison Orozco                +
echo             +                                          +
echo             +  Este archivo es una demo de los         +
echo             +  comandos MS-DOS de Windows              +
echo             +                                          +
echo             +------------------------------------------+
echo.
echo.
echo.
echo.
echo.
pause
goto:menuprincipal
::=======================================================
:utilidades
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
echo             +           [1] Mi perfil en Github        +
echo             +           [2] Ver IPconfig (basico)      +
echo             +           [3] Menu principal             +
echo             +                                          +
echo             +------------------------------------------+
choice /n /c 123 /m ""
if errorlevel ==3 goto menuprincipal
if errorlevel ==2 goto verIPConfigBasico
if errorlevel ==1 goto miPerfilGithub
::=======================================================
:verIPConfigBasico
cls
echo.
ipconfig
echo.
pause
goto:menuprincipal
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
goto:menuprincipal
::=======================================================
:salir
exit
::=======================================================
