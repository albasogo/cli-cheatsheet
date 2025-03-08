# Apuntes Básicos de AWK

## 🔹 1. Estructura Básica de un Script AWK

```bash
awk 'BEGIN { print "Inicio" } { print $0 } END { print "Fin" }' archivo.txt
```
- BEGIN {} → Se ejecuta antes de procesar el archivo.
- {} → Se ejecuta una vez por cada línea del archivo.
- END {} → Se ejecuta después de procesar el archivo.

### Ejemplo: Si archivo.txt contiene:

Línea 1  
Línea 2

### Salida:

Inicio
Línea 1  
Línea 2
Fin

## 🔹 2. Variables Especiales en AWK

| Variable  | Descripción |
|-----------|------------|
| `$0`      | Toda la línea actual |
| `$1, $2, $3` | Primer, segundo, tercer campo... |
| `NR`      | Número total de líneas procesadas |
| `FNR`     | Número de línea dentro del archivo actual |
| `NF`      | Número de campos en la línea actual |
| `FS`      | Separador de campos (por defecto, espacio o tabulador) |

### Ejemplo: Imprimir el segundo campo

```bash
echo "123 Juan Pérez" | awk '{ print $2 }'
```
### Salida:
Juan

## 🔹 3. Filtrar líneas con if
Podemos usar if para filtrar líneas con una condición.
```bash
awk '{ if ($2 == "Juan") print $0 }' archivo.txt
```
Solo imprime las líneas donde el segundo campo sea "Juan".  

Otro ejemplo usando != (diferente):
```bash
awk '{ if ($2 != "Pedro") print $0 }' archivo.txt
```
Imprime todas las líneas excepto las que tienen "Pedro" en la segunda columna.

## 🔹 4. Filtrar con NR == FNR
Cuando usamos dos archivos, NR == FNR indica que estamos en el primer archivo.
```bash
awk '
NR==FNR { datos[$1] = $2; next } 
{ if ($1 in datos) print $1, datos[$1], $2 }
' archivo1.txt archivo2.txt
```
Carga archivo1.txt en un array y luego lo usa para procesar archivo2.txt

##  🔹 5. Extraer Subcadenas con substr()
La función substr() permite extraer partes de un campo o línea completa.
```bash
awk '{ print substr($0, 2, 6) }' archivo.txt
```
Extrae 6 caracteres desde la posición 2 de cada línea.

Otro ejemplo, extrayendo parte de un nombre:
```bash
awk '{ print substr($2, 1, 4) }' archivo.txt
```
Extrae los primeros 4 caracteres del segundo campo.

## 🔹 6. Arrays en AWK (Diccionarios)
Los arrays en AWK funcionan como diccionarios en Python o HashMaps en Java.
```bash
awk '{ compras[$1] = $2 } END { for (id in compras) print id, compras[id] }' archivo.txt
```
Guarda valores en un array y los imprime al final.  
Otro ejemplo práctico:
```bash
awk '
{ ventas[$1] += $2 }
END { for (id in ventas) print id, ventas[id] }
' archivo.txt
```
Suma valores asociados a la misma clave.

## 🔹 7. next: Saltar a la siguiente línea
```bash
awk '{ if ($1 == "Ignorar") next; print $0 }' archivo.txt
```
## 🔹 8. print y printf

print → Imprime con espacios automáticos.  
printf → Controla el formato (como en Java).

```bash
awk '{ printf "Usuario: %s, Edad: %d\n", $1, $2 }' archivo.txt
```
## 🔹 9. Separador de campos (FS)

Si un archivo CSV usa , en lugar de espacios, podemos indicarlo con -F.
```bash
awk -F ',' '{ print $2 }' archivo.csv
```
Procesa archivos CSV separando por ,.  

También se puede definir dentro del script:
```bash
awk 'BEGIN { FS="," } { print $2 }' archivo.csv
```
## 🔹 10. Contar líneas y palabras
```bash
awk 'END { print "Líneas:", NR }' archivo.txt
```
 Cuenta las líneas de un archivo. 
Para contar palabras:
```bash
awk '{ total += NF } END { print "Palabras:", total }' archivo.txt
```
Suma el número de palabras (NF) en cada línea.
