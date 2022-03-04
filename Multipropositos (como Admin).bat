@echo off
title Multipropositos
color 0a
mode con: cols=70 lines=25
:menuPrincipal
cls
echo.
echo                             BIENVENID@
echo.
echo             +------------------------------------------+
echo             +                                          +
echo             +                  MENU                    +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +           [1] Posinstalacion             +
echo             +           [2] Utilidades                 +
echo             +                                          +
echo             +------------------------------------------+
echo             + [q] Salir                     [g] Github +
echo             +------------------------------------------+
echo.
set /p opcion="Opcion> "
:: Primero ordenar letras y luego números
:: funcion goto para ir a otra seccion del archivo
if %opcion% == q ( goto salir )
if %opcion% == g ( goto miPerfilGithub )
:: Si son opciones con números hay que anidar las sentencias
if %opcion% == 2 ( goto Utilidades )
if %opcion% == 1 ( goto Posinstalacion ) else ( goto opcionNoValida )
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
:opcionNoValida
msg * /w "Opcion no valida. Cerrando programa."
goto salir
::=======================================================
:salir
exit








::=======================================================
:Posinstalacion
cls
echo.
echo             +------------------------------------------+
echo             +                                          +
echo             +              POSINSTALACION              +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +    [1] Administrador de Dispositivos     +
echo             +    [2] Directivas de Grupo               +
echo             +    [3] Version de Windows                +
echo             +    [4] Serial Equipo                     +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +           [b] Menu principal             +
echo             +                                          +
echo             +------------------------------------------+
echo.
echo.
set /p posinstalacion="Opcion> "
:: Primero ordenar letras y luego números
if %posinstalacion% == b ( goto menuPrincipal )
:: Orden de mayor a menor
if %posinstalacion% == 4 ( goto serialEquipo )
if %posinstalacion% == 3 ( goto versionWindows )
if %posinstalacion% == 2 ( goto directivasGrupo )
if %posinstalacion% == 1 ( goto administradorDispositivos ) else ( goto salir )
::=======================================================
:administradorDispositivos
cls
echo.
echo Abriendo Administrador de Dispositivos...
echo.
start hdwwiz.cpl
echo Listo!
echo.
pause
goto:Posinstalacion
::=======================================================
:directivasGrupo
cls
echo.
echo Abriendo Directivas de Grupo...
echo.
start gpedit.msc
echo Listo!
echo.
pause
goto:Posinstalacion
::=======================================================
:versionWindows
cls
echo.
start winver
echo Listo!
echo.
pause
goto:Posinstalacion
::=======================================================
:serialEquipo
cls
echo.
echo Obteniendo
wmic bios get serialnumber
echo Listo!
echo.
pause
goto:Posinstalacion










::=======================================================
:Utilidades
cls
echo.
echo             +------------------------------------------+
echo             +                                          +
echo             +               UTILIDADES                 +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +    [1] Desfragmentar disco               +
echo             +    [2] Programador de tareas             +
echo             +    [3] Archivos temporales               +
echo             +    [4] Opciones avanzadas del sistema    +
echo             +                                          +
echo             +------------------------------------------+
echo             +                                          +
echo             +           [b] Menu principal             +
echo             +                                          +
echo             +------------------------------------------+
echo.
set /p utilidades="Opcion> "
if %utilidades% == 1 ( goto desfragmentarDisco )
if %utilidades% == 2 ( goto programadorTareas )
if %utilidades% == 3 ( goto archivosTemporales )
if %utilidades% == 4 ( goto opcionesAvanzadasSistema )
if %utilidades% == b ( goto menuPrincipal ) else ( goto salir )
::=======================================================
:desfragmentarDisco
cls
echo.
echo             +------------------------------------------+
echo             +          DESFRAGMENTAR DISCO             +
echo             +------------------------------------------+
echo.
echo   Digite la letra de la unidad que desea desfragmentar.
echo   Ejemplo: C: o D:
echo.
set /p disco="Letra de la particion> "
defrag %disco% /b /o /u
:: /b = Para desfragmentar arranque de windows
:: /o = Para Optimizar cada uno de los medios
:: /u = Para mostrar resultados en pantalla
echo.
pause
goto:Utilidades
::=======================================================
:programadorTareas
cls
echo.
echo Abriendo Programador de Tareas de Windows
echo.
start taskschd
echo Listo!
echo.
pause
goto:Utilidades
::=======================================================
:archivosTemporales
cls
echo.
echo  Ejecutando limpieza de archivos.
cleanmgr /sagerun:1
echo.
echo  Abriendo carpetas con archivos temporales...
start %temp%
start temp
start prefetch
echo.
echo  Elimine los archivos que el sistema el permita, recuerde
echo  que pueden haber archivos usados por el sistema.
echo.
pause
goto:Utilidades
::=======================================================
:opcionesAvanzadasSistema
cls
echo.
echo  Abriendo opciones avanzadas del sistema.
start sysdm.cpl
echo.
echo  Listo!
echo.
pause
goto:Utilidades
