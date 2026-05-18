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
echo 8. Tracert
echo 9. Nslookup
echo 10. Ipconfig
set /p opcion=Elegi una opcion (1-10)

if %opcion%==1 goto loopback
if %opcion%==2 goto IPPlaca
if %opcion%==3 goto PConect
if %opcion%==4 goto Monitoreo
if %opcion%==5 goto DefCPaq
if %opcion%==6 goto PCarga
if %opcion%==7 goto ReNomb
if %opcion%==8 goto VCamm
if %opcion%==9 goto PrDNS
if %opcion%==10 goto InfDis


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
set /p url= Ingrese la url a testear:
echo Enviando 4 paquetes a %url%...
ping %url%
pause
goto Menu

:Monitoreo
set /p host= Ingrese la url o ip a monitorear:
echo Iniciando monitoreo continuo a %host%
ping -t %host%
pause
goto Menu

:DefCPaq
set /p host= Ingrese la URL o IP del destino:
echo Enviando 10 paquetes a %host%
echo Obteniendo promedio de latencia
ping -n 10 %host%
pause
goto Menu

:PCarga
set /p host= Ingrese la url o ip del destino:
echo Enviando paquetes de 1000 bytes a %host%
ping -l 1000 %host%
pause
goto Menu

:ReNomb
set /p ip= Ingrese la direccion IP:
ping -a %ip%
pause
goto Menu

:VCamm
echo Mostrando configuracion detallada de red...
ipconfig /all
pause
goto Menu

:PrDNS
set /p dominio=Ingrese el dominio o IP para consultar DNS (ej: google.com):
nslookup %dominio%
pause
goto Menu

:InfDis
set /p destino=Ingrese la URL o IP para rastrear la ruta:
tracert %destino%
pause
goto Menu
