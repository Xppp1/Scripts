#Autor: Omar Daniel Camarillo Garcia
#Fecha: 20/04/24
#Descrcipcion: Menu
#!/bin/bash

echo "Seleccione una opcion: "
echo "1. Mostrar el nombre de la version de linux que usa"
echo "2. Generar una copia de n archivos a un dispositivo de almacenamiento"
echo "3. Generar listado de los usuarios creados en el equipo"
echo "4. Mostrar en pantalla la capacidad de almacenamiento de la distribucion"
echo "5. Salir"

read -p "Introduzca su opcion: " opcion

case $opcion in
    1)
        clear
        echo "La versión de Linux es:"
        cat /etc/*release
        ./menu.sh
        ;;
    2)
        clear
        read -p "Introduzca la ruta de los archivos a copiar: " ruta_archivos
        read -p "Introduzca la cantidad de archivos a copiar: " cantidad
        read -p "Introduzca el dispositivo de almacenamiento (ej. /dev/sdb1): " dispositivo
        ls -p $ruta_archivos | grep -v / | head -n $cantidad | xargs -I {} cp {} $dispositivo
        ;;
    3)
        clear
        echo "Listado de usuarios:"
        getent passwd {1000..60000} | cut -d: -f1
        ./menu.sh
        ;;
    4)
        clear
        echo "Capacidad de almacenamiento de la distribución:"
        df -h
        ./menu.sh
        ;;
    5)
        clear
        echo "Saliendo del script..."
        exit 0
        ;;
    *)
        clear
        echo "Opción no válida."
        ./menu.sh
        ;;
esac
