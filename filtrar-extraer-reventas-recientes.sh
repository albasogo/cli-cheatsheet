#!/bin/bash

# Definición de archivos de entrada y salida. 
compras_file="compras_simuladas.txt"
cambios_file="cambios_simulados.txt"
output_file="resultado_filtrado.txt"

# Extracción de las reventas más recientes
awk '
{
    tipo = substr($0,1,1);  # Extraemos el primer carácter R 
    id = substr($0,2,6);    # Extraemos el identificador de la compra (posición 2-7)
    fecha = substr($0,39,8); # Extraemos la fecha (posición 39-46)

    if (tipo == "R") {  
        clave = "R" id; 
        if (!(clave in cambios) || fecha > fechas[clave]) {
            cambios[clave] = $0; 
            fechas[clave] = fecha; 
        }
    }
}
END {
    for (i in cambios) {
        print cambios[i]; 
    }
}' "$cambios_file" > cambios_filtrados.txt

# Cruce con el archivo de compras y obtenemos solo las compras que tienen reventa
awk '
NR==FNR {
    cambios[substr($0,2,6)] = $0; 
    next;
}
{
    id = substr($0,2,6); 
    if (id in cambios) { 
        print cambios[id];
    }
}' cambios_filtrados.txt "$compras_file" > "$output_file"

# Mostramos el resultado
cat "$output_file"
