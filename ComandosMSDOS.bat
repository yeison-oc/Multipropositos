@echo off
title Practica con MS-DOS [ TMECDICE 1749611 - YEISON OROZCO ]
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
echo             +           [1] Iniciar demo               +
echo             +           [2] Utilidades                 +
echo             +           [3] Creditos                   +
echo             +           [4] Salir                      +
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
if errorlevel ==4 goto salir
if errorlevel ==3 goto creditos
if errorlevel ==2 goto utilidades
if errorlevel ==1 goto iniciarDemo
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
echo             +           [1] Ir a Sofiaplus             +
echo             +           [2] Ver IPconfig (basico)      +
echo             +           [3] Menu principal             +
echo             +                                          +
echo             +------------------------------------------+
choice /n /c 123 /m ""
if errorlevel ==3 goto menuprincipal
if errorlevel ==2 goto verIPConfigBasico
if errorlevel ==1 goto irSofiaPlus
::=======================================================
:verIPConfigBasico
cls
echo.
ipconfig
echo.
pause
goto:menuprincipal
::=======================================================
:irSofiaPlus
cls
echo.
echo Abriendo navegador...
echo.
start http://oferta.senasofiaplus.edu.co/sofia-oferta/
echo Listo!
echo.
pause
goto:menuprincipal
::=======================================================
:iniciarDemo
cls
echo.
echo Creando carpeta raiz...
md TMECDICE
cd TMECDICE
start.
echo.
echo Listo!
echo.
echo Creando estructura de carpetas...
md APLI PROG VARIOS
cd apli
md WORD ACCESS EXCEL
cd word
md TEXTOS NOTAS
cd..
cd excel
md TABLAS INFO
cd..
cd..
cd prog
md BASIC PASCAL FORTRAN
echo.
echo Listo!
echo.
cd..
tree
pause
goto:menuprincipal
::=======================================================
:salir
exit
::=======================================================
