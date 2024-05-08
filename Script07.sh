#Author Xppp1
#Fecha: 13-03-24
#Descripcion; Estructura de un menu
#!/bin/bash
echo "Seleccione una opcion del menu "
echo "1: Listado"
echo "2: Fecha"
echo '3: Directorio Actual"
echo "4: Salir"
read n
case $n in
1) echo "Listado"
	ls;;
2) echo "Fecha"
	date;;
3) echo "Directorio actual"
	pwd;;
4) echo "Saliendo...";;
*) echo "Opcion incorrecta";;
esac

