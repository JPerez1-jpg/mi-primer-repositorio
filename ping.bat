@echo off
color 0B

:Menu
echo 1. Verificacion de Bucle Local
echo 2. Obtener IP de la placa
echo 3. Prueba de Conectividad Estandar
echo 4. Monitoreo Continuo
echo 5. Definir Cantidad de Paquetes
echo 6. Prueba de Carga
echo 7. Resolucion de Nombres
set /p opcion=Elegi una opcion (1-7)

if %opcion%==1 goto loopback
if %opcion%==2 goto IPPlaca
if %opcion%==3 goto PConect
if %opcion%==4 goto Monitoreo
if %opcion%==5 goto DefCPaq
if %opcion%==6 goto PCarga
if %opcion%==7 goto ReNomb

:loopback
ping 127.0.0.1
pause
goto Menu


:IPPlaca
echo Mostrar informacion de Red
ipconfig
pause
goto Menu

:PConect
cls
set /p url= Ingrese la url a testear:
echo Enviando 4 paquetes a %url%...
ping %url%
pause
goto Menu

:Monitoreo
cls
set /p host= Ingrese la url o ip a monitorear:
echo Iniciando monitoreo continuo a %host%
ping -t %host%
pause
goto Menu

:DefCPaq
cls
set /p host= Ingrese la URL o IP del destino:
echo Enviando 10 paquetes a %host%
echo Obteniendo promedio de latencia
ping -n 10 %host%
pause
goto Menu

:PCarga
cls
set /p host= Ingrese la url o ip del destino:
echo Enviando paquetes de 1000 bytes a %host%
ping -l 1000 %host%
pause
goto Menu

:ReNomb
cls
set /p ip= Ingrese la direccion IP:
ping -a %ip%
pause
goto Menu