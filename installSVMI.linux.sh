#!/bin/bash
#Guión que descarga e instala escenario de FlightGear de Maiquetía creado por Legoboy (https://github.com/legoboyvdlp/SVMI-fg-CustomScenery)
#File that downloads and installs scenery for Maiqueta created by legoboyvdlp (https://github.com/legoboyvdlp/SVMI-fg-CustomScenery)  
#Probado en Debian Testing y FlightGear 3.4
#Tested in Debian and FG 3.4
#Requiere wget, unzip, sudo rm y cp, que suelen estra en todas las distribuciones.
#Requires wget, unzip, sudo rm and cp, which are included in all distributions

#Descarga archivo
#download .zip
archivo=/var/tmp/SVMI-fg-legoboy-master.zip
wget -c https://github.com/legoboyvdlp/SVMI-fg-CustomScenery/archive/master.zip -O $archivo

#Descomprime a temporal
#unzip
temporal=/tmp
unzip $archivo -d $temporal

#Elimina innecesarios
#remove unnecessaries
rm -v $temporal/SVMI-fg-CustomScenery-master/SVMI/*.png

#Copia a destino
#copy to final location
sudo cp -vura $temporal/SVMI-fg-CustomScenery-master/SVMI/* /usr/share/games/flightgear
