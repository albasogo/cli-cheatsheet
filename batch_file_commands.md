# 📄 Batch (CMD) - Manejo de Ficheros y Directorios

Chuleta de comandos en **Batch (CMD)** para trabajar con archivos y directorios en Windows.

---

## 📂 Comandos para Directorios

| **Comando**         | **Descripción** |
|---------------------|----------------|
| `DIR`              | Lista los archivos y carpetas del directorio actual. |
| `DIR /B`           | Lista solo los nombres de los archivos y carpetas sin detalles. |
| `DIR /S`           | Lista archivos en el directorio actual y sus subdirectorios. |
| `DIR /A`           | Muestra archivos ocultos y de sistema. |
| `CD carpeta`       | Entra en la carpeta especificada. |
| `CD ..`            | Sube un nivel en el árbol de directorios. |
| `CD /D ruta`       | Cambia a un directorio en otra unidad. |
| `MKDIR carpeta` o `MD carpeta` | Crea un directorio nuevo. |
| `RMDIR carpeta` o `RD carpeta` | Borra un directorio vacío. |
| `RMDIR /S /Q carpeta` | Borra un directorio y todo su contenido sin preguntar. |

---

## 📄 Comandos para Archivos

| **Comando**         | **Descripción** |
|---------------------|----------------|
| `COPY origen destino` | Copia un archivo a otro destino. |
| `COPY archivo + archivo2 resultado` | Une dos archivos en uno nuevo. |
| `XCOPY origen destino` | Copia archivos y carpetas. |
| `XCOPY /E /I origen destino` | Copia carpetas con su contenido. |
| `XCOPY /Y origen destino` | Sobrescribe archivos sin confirmar. |
| `MOVE origen destino` | Mueve un archivo o carpeta. |
| `DEL archivo`       | Borra un archivo. |
| `DEL /F /Q archivo` | Borra un archivo sin confirmación. |
| `DEL /S /Q *.*`    | Borra todos los archivos en la carpeta y subcarpetas. |
| `REN archivo nuevo_nombre` | Renombra un archivo. |

---

## 📜 Visualización y Manipulación de Archivos

| **Comando**         | **Descripción** |
|---------------------|----------------|
| `ATTRIB archivo`   | Muestra los atributos de un archivo. |
| `ATTRIB +H archivo` | Oculta un archivo. |
| `ATTRIB -H archivo` | Hace visible un archivo oculto. |
| `TYPE archivo.txt` | Muestra el contenido de un archivo de texto. |
| `FIND "texto" archivo.txt` | Busca una cadena dentro de un archivo. |
| `FINDSTR "texto" archivo.txt` | Busca texto con soporte de expresiones regulares. |
| `MORE archivo.txt` | Muestra un archivo por páginas en la consola. |
| `FC archivo1 archivo2` | Compara dos archivos línea por línea. |
| `SORT archivo.txt` | Ordena alfabéticamente el contenido de un archivo. |

---

## ✏️ Redirección y Escritura en Archivos

| **Comando**         | **Descripción** |
|---------------------|----------------|
| `ECHO Hola > archivo.txt` | Crea o sobrescribe un archivo con un texto. |
| `ECHO Hola >> archivo.txt` | Agrega texto al final de un archivo. |
| `SET /P VAR=<archivo.txt` | Lee la primera línea de un archivo en una variable. |

---

💡 **Tip:** Si necesitas más detalles sobre un comando, usa `HELP <comando>` en la línea de comandos.

🚀 **Autor:** [Tu Nombre o Usuario]  
📌 **Repositorio:** [GitHub / Tu Proyecto]  
