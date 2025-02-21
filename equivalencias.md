| **Función**               | **KSH (Unix/Linux, .ksh)**           | **CMD (Windows, .bat)**         |
|---------------------------|-------------------------------------|--------------------------------|
| **Comentario**            | `# Esto es un comentario`         | `REM Esto es un comentario` o `:: Esto es un comentario` |
| **Imprimir en consola**   | `echo "Hola"`                     | `echo Hola`                   |
| **Definir variable**      | `VAR="valor"`                     | `SET VAR=valor`               |
| **Usar variable**         | `$VAR`                            | `%VAR%`                       |
| **Leer entrada usuario**  | `read VAR`                        | `SET /P VAR=Ingrese valor:`   |
| **Condición IF**          | `if [ "$VAR" = "valor" ]; then ... fi` | `IF "%VAR%"=="valor" ( ...)` |
| **Comparaciones numéricas** | `-eq, -ne, -lt, -le, -gt, -ge` | `EQU, NEQ, LSS, LEQ, GTR, GEQ` |
| **Estructura CASE**       | `case $VAR in ... esac`           | `IF /I "%VAR%"=="valor" ( ...) ELSE ( ...)` |
| **Bucles FOR**           | `for i in {1..5}; do ... done`    | `FOR /L %%i IN (1,1,5) DO (...)` |
| **Bucles WHILE**          | `while [ condición ]; do ... done` | `:loop ... GOTO loop`         |
| **Ejecutar otro script**  | `./script.ksh`                    | `CALL script.bat`             |
| **Esperar X segundos**    | `sleep 5`                         | `TIMEOUT /T 5`                |
| **Listar archivos**       | `ls -l`                           | `DIR`                         |
| **Mover archivos**        | `mv origen destino`               | `MOVE origen destino`         |
| **Copiar archivos**       | `cp origen destino`               | `COPY origen destino`         |
| **Eliminar archivo**      | `rm archivo`                      | `DEL archivo`                 |
| **Eliminar carpeta**      | `rm -r carpeta`                   | `RMDIR /S /Q carpeta`         |
| **Crear carpeta**         | `mkdir carpeta`                   | `MKDIR carpeta`               |
| **Ver contenido de archivo** | `cat archivo`                 | `TYPE archivo`                |
| **Redirección de salida** | `comando > archivo` (sobrescribe) | `comando > archivo` (sobrescribe) |
|                           | `comando >> archivo` (agregar)   | `comando >> archivo` (agregar) |
| **Redirección de error**  | `comando 2> error.log`           | `comando 2> error.log`        |
| **Encadenar comandos**    | `comando1 && comando2` (si éxito) | `comando1 && comando2`        |
|                           | `comando1 || comando2` (si falla) | `comando1 || comando2`        |
| **Ver procesos activos**  | `ps aux`                          | `TASKLIST`                    |
| **Matar proceso**         | `kill PID`                        | `TASKKILL /PID PID`           |
| **Ver IP local**          | `ip a` o `ifconfig`               | `ipconfig`                    |
| **Ver rutas definidas**   | `echo $PATH`                      | `echo %PATH%`                 |
| **Salir del script**      | `exit 0`                          | `EXIT /B 0`                   |



