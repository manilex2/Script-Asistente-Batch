@ECHO OFF
rem --------------------------------------------------------------------- Iniciacion ----------------------------------------------------------------------------------
Color 1F
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Indica tu nombre
ECHO Indicame tu nombre por favor.
set /p nombre=
GOTO eliminarmain

rem --------------------------------------------------------------------- Menu Principal ----------------------------------------------------------------------------------
:eliminarmain
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO main

:main
TITLE Bienvenido al MENU PRINCIPAL.
ECHO BIENVENIDO
ECHO %nombre% soy tu programa de ayuda.
ECHO Ten un hermoso dia.
ECHO.
ECHO Que quieres hacer ahorita?
ECHO.
ECHO Programar? Presiona 1.
ECHO Ejecutar Git? Presiona 2.
ECHO Ver noticias deportivas? Presiona 3.
ECHO Buscar algo en Google? Presiona 4.
ECHO Abrir Redes Sociales? Presiona 5.
ECHO Abrir Bancos? Presiona 6.
ECHO Escuchar musica? Presiona 7.
ECHO Abrir Sitio Web en localhost (Recuerda ya haber iniciado el servidor). Presiona 8.
ECHO Salir del programa? Presiona 9.
set /p menu=
IF '%menu%'=='1' GOTO eliminarprogramar
IF '%menu%'=='2' GOTO carpetagit
IF '%menu%'=='3' GOTO deportivas
IF '%menu%'=='4' GOTO google
IF '%menu%'=='5' GOTO rrss
IF '%menu%'=='6' GOTO eliminarbanco
IF '%menu%'=='7' GOTO musica
IF '%menu%'=='8' GOTO sitioweb
IF '%menu%'=='9' (GOTO final) else (GOTO error2)

:error2
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Opcion no valida.
ECHO Opcion no configurada. Intenta nuevamente %nombre%.
ECHO.
GOTO main

rem --------------------------------------------------------------------- Menu Programar ----------------------------------------------------------------------------------
:eliminarprogramar
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO programar

:programar
TITLE VISUAL STUDIO CODE
ECHO Vas a usar Visual Studio Code para programar %nombre%?
set /p vscode=
cls
IF '%vscode%'=='si' GOTO visualcode
IF '%vscode%'=='Si' GOTO visualcode
IF '%vscode%'=='SI' GOTO visualcode
IF '%vscode%'=='sI' GOTO visualcode
IF '%vscode%'=='no' GOTO eliminarservidor
IF '%vscode%'=='No' GOTO eliminarservidor
IF '%vscode%'=='NO' GOTO eliminarservidor
IF '%vscode%'=='nO' (GOTO eliminarservidor) else (GOTO error10)

:error10
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Opcion no valida. %nombre% indicame si o no, dependiendo de lo que necesites.
ECHO.
GOTO programar

:visualcode
TITLE abriendo VISUAL STUDIO CODE
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Abriendo Visual Studio Code, espera por favor %nombre%
set vscode="C:\Program Files (x86)\Microsoft VS Code\Code.exe"
START cmd /c %vscode%
timeout /t 6
GOTO eliminarservidor

:eliminarservidor
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO necesitoservidor

:necesitoservidor
TITLE SERVIDOR
ECHO %nombre%, vas a necesitar algun servidor?
ECHO.
ECHO Introduce x para volver al menu principal.
set /p opcion=
IF '%opcion%'=='si' GOTO eliminarservidorusar
IF '%opcion%'=='Si' GOTO eliminarservidorusar
IF '%opcion%'=='SI' GOTO eliminarservidorusar
IF '%opcion%'=='sI' GOTO eliminarservidorusar
IF '%opcion%'=='no' GOTO eliminarlocalhostphp
IF '%opcion%'=='No' GOTO eliminarlocalhostphp
IF '%opcion%'=='NO' GOTO eliminarlocalhostphp
IF '%opcion%'=='x' GOTO eliminarmain
IF '%opcion%'=='X' GOTO eliminarmain
IF '%opcion%'=='nO' (GOTO eliminarlocalhostphp) else (GOTO error3)

:error3
TITLE Opcion no valida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Ups, aun no me han asignado esa funcion. Asegurate de colocar si o no %nombre%.
ECHO.
GOTO necesitoservidor

:eliminarservidorusar
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO servidor


:servidor
TITLE Servidor a usar
ECHO Que servidor vas a usar %nombre%?
ECHO.
ECHO WAMP para PHP? Presiona 1.
ECHO Node.js para Angular/React/Vue? Presiona 2.
ECHO No vas a usar un servidor? Presiona 3.
ECHO Volver al Menu Principal? Presiona 4.
set /p servidorelect=
cls
IF '%servidorelect%'=='1' GOTO php
IF '%servidorelect%'=='2' GOTO eliminarnode
IF '%servidorelect%'=='3' GOTO eliminarlocalhostphp
IF '%servidorelect%'=='4' (GOTO eliminarmain) else (GOTO error4)

:error4
TITLE Opcion invalida
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Ese servidor no me ha sido asignado. Intenta nuevamente %nombre%.
ECHO.
GOTO servidor

:php
TITLE Iniciando servidor WAMP para PHP
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Iniciando servidor WAMP...
ECHO.
ECHO Esperando que inicien todos los servicios. Por favor espera %nombre%...
cd..
cd "C:\servidor\wamp64\"
START "" wampmanager.exe
timeout /t 60
PAUSE>nul
cls
GOTO eliminarlocalhostphp

:eliminarlocalhostphp
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO localhostphp

:localhostphp
TITLE Ejecutar LocalHost
ECHO Deseas ejecutar el localhost %nombre%?
ECHO.
ECHO Introduce x para volver al menu inicial.
set /p opcionhostphp=
cls
IF '%opcionhostphp%'=='si' GOTO hostphp
IF '%opcionhostphp%'=='Si' GOTO hostphp
IF '%opcionhostphp%'=='SI' GOTO hostphp
IF '%opcionhostphp%'=='sI' GOTO hostphp
IF '%opcionhostphp%'=='no' GOTO eliminarphpmyadmin
IF '%opcionhostphp%'=='No' GOTO eliminarphpmyadmin
IF '%opcionhostphp%'=='NO' GOTO eliminarphpmyadmin
IF '%opcionhostphp%'=='x' GOTO eliminarmain
IF '%opcionhostphp%'=='X' GOTO eliminarmain
IF '%opcionhostphp%'=='nO' (GOTO eliminarphpmyadmin) else (GOTO error5)

:error5
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO No entiendo que quisiste decir %nombre%. Vuelve a intentar introduciendo si o no, segun sea el caso.
ECHO.
GOTO localhostphp

:hostphp
cls
TITLE Iniciando localhost.
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Iniciando localhost... espera %nombre% por favor...
START "" "http://localhost"
timeout /t 6
cls
GOTO eliminarphpmyadmin

:eliminarphpmyadmin
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO phpadmin

:phpadmin
TITLE Ejecutar PHPMyAdmin
ECHO Deseas ejecutar el PHPMyAdmin %nombre%?
set /p opcionphpmyadmin=
IF '%opcionphpmyadmin%'=='si' GOTO adminafirmativo
IF '%opcionphpmyadmin%'=='Si' GOTO adminafirmativo
IF '%opcionphpmyadmin%'=='SI' GOTO adminafirmativo
IF '%opcionphpmyadmin%'=='sI' GOTO adminafirmativo
IF '%opcionphpmyadmin%'=='no' GOTO eliminarmain
IF '%opcionphpmyadmin%'=='No' GOTO eliminarmain
IF '%opcionphpmyadmin%'=='NO' GOTO eliminarmain
IF '%opcionphpmyadmin%'=='nO' (GOTO eliminarmain) else (GOTO error8)

:adminafirmativo
cls
TITLE PHPMyAdmin
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Ejecutado PHPMyAdmin %nombre%. No tardare nada.
START "" "http://localhost/phpmyadmin"
timeout /t 6
cls
GOTO eliminarmain

:error8
TITLE Opcion Invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO No entendi que quisiste decir %nombre%. Vuelve a intentar introduciendo si o no, segun sea el caso.
ECHO.
GOTO phpadmin

:eliminarnode

:node
TITLE Ejecutando Node Packpage Manager
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Iniciando NPM de Node... Esto sera rapido %nombre%
START cmd /k "C:\Program Files\nodejs\nodevars.bat"
timeout /t 6
ECHO.
ECHO Terminado.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO localhostnode

:localhostnode
TITLE Abrir LocalHost
ECHO Vas a querer abrir el localhost %nombre%?
set /p opcionhostnode=
cls
IF '%opcionhostnode%'=='si' GOTO elimimarhostnode
IF '%opcionhostnode%'=='Si' GOTO elimimarhostnode
IF '%opcionhostnode%'=='SI' GOTO elimimarhostnode
IF '%opcionhostnode%'=='sI' GOTO elimimarhostnode
IF '%opcionhostnode%'=='no' GOTO eliminarmain
IF '%opcionhostnode%'=='No' GOTO eliminarmain
IF '%opcionhostnode%'=='NO' GOTO eliminarmain
IF '%opcionhostnode%'=='nO' (GOTO eliminarmain) else (GOTO error6)

:error6
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce si o no, segun sea el caso.
ECHO.
GOTO localhostnode

:elimimarhostnode
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO hostnode

:hostnode
TITLE Indicar el puerto.
ECHO Indicame el puerto a usar %nombre%
set /p puerto=
ECHO.
GOTO eliminarpuertoelegido

:eliminarpuertoelegido
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO puertoelegido

:puertoelegido
TITLE Validacion de puerto
ECHO %nombre% el puerto que me colocaste es el puerto %puerto%?
ECHO Es correcto?
set /p puertorespuesta=
IF '%puertorespuesta%'=='si' GOTO puertohost
IF '%puertorespuesta%'=='Si' GOTO puertohost
IF '%puertorespuesta%'=='SI' GOTO puertohost
IF '%puertorespuesta%'=='sI' GOTO puertohost
IF '%puertorespuesta%'=='no' GOTO elimimarhostnode
IF '%puertorespuesta%'=='No' GOTO elimimarhostnode
IF '%puertorespuesta%'=='NO' GOTO elimimarhostnode
IF '%puertorespuesta%'=='nO' (GOTO elimimarhostnode) else (GOTO error7)

:puertohost
TITLE Abriendo LocalHost en el puerto seleccionado
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Abriendo el localhost. un momento %nombre% por favor.
START "" "http://localhost:%puerto%"
timeout /t 6
GOTO eliminarmain

:error7
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce si o no, segun sea el caso.
ECHO.
GOTO puertoelegido

rem --------------------------------------------------------------------- Menu Git --------------------------------------------------------------------------------------
:carpetagit
TITLE Indicar carpeta GIT
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Bienvenido al menu Git %nombre%.
ECHO.
ECHO Indicame la carpeta que vamos a usar con su ruta completa.
set /p carpetagit=
GOTO eliminargit

:eliminargit
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO git

:git
TITLE Menu Git.
ECHO Ruta a usar: %carpetagit%
ECHO.
cd..
cd %carpetagit%
ECHO Que deseas hacer %nombre%?
ECHO.
ECHO Iniciar un nuevo repositorio Git. Presione 1.
ECHO Cambiar usuario y email. Presione 2.
ECHO Ver el estatus de archivos del repositorio Git. Presione 3.
ECHO Agregar archivos al repositorio Git. Presione 4.
ECHO Hacer un commit al repositorio Git. Presione 5.
ECHO Eliminar archivos que se encuentran ya en commit. Presiona 6.
ECHO Para renombrar archivos. Presiona 7.
ECHO Ver el log del repositorio. Presiona 8.
ECHO Subir repositorio a GitHub. Presione 9.
ECHO Clonar repositorio de GitHub. Presione 10.
ECHO Volver al menu principal. Presiona 11.
set /p gitopcion=
IF '%gitopcion%'=='1' GOTO nuevogit
IF '%gitopcion%'=='2' GOTO usuariogit
IF '%gitopcion%'=='3' GOTO estatusgit
IF '%gitopcion%'=='4' GOTO agregargit
IF '%gitopcion%'=='5' GOTO commitgit
IF '%gitopcion%'=='6' GOTO eliminargitcommit
IF '%gitopcion%'=='7' GOTO cambiarnombregit
IF '%gitopcion%'=='8' GOTO gitlog
IF '%gitopcion%'=='9' GOTO subirgithub
IF '%gitopcion%'=='10' GOTO clonargithub
IF '%gitopcion%'=='11' (GOTO eliminarmain) else (GOTO error14)

:error14
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce si o no, segun sea el caso.
ECHO.
GOTO git

:nuevogit
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Indicame nombre de usuario
ECHO Indicame tu Nombre y Apellido o un nombre de usuario que quieras usar %nombre%
set /p usuario=
IF '%correo%'=='' (GOTO gitcorreo) else (GOTO gitcorroborar)
:gitcorreo
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Indicame Email
ECHO Indicame un correo electronico que quieras usar %nombre%
set /p correo=
GOTO gitcorroborar
:gitcorroborar
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
:verificargit
TITLE Corroborar datos
ECHO Verifica si estos datos que introduciste son correctos %nombre%
ECHO.
ECHO Nombre: %usuario%
ECHO Email: %correo%
ECHO.
ECHO Si son correctos introduce 1, si el nombre es incorrecto presiona 2, si el email es incorrecto presiona 3.
set /p confirmarusuario=
IF '%confirmarusuario%'=='1' GOTO gitiniciar
IF '%confirmarusuario%'=='2' GOTO nuevogit
IF '%confirmarusuario%'=='3' (GOTO gitcorreo) else (GOTO error15)

:error15
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce una opcion valida.
ECHO.
GOTO verificargit

:gitiniciar
TITLE Iniciando Git
ECHO %nombre% en estos momentos esto iniciando el repositorio, espera por favor.
git config --global user.name "%usuario%"
git config --global user.email "%correo%"
git init
timeout /t 6
GOTO eliminargit

:usuariogit
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Indicame nombre de usuario
ECHO Indicame tu Nombre y Apellido o un nombre de usuario que quieras usar %nombre%
set /p usuario=
IF '%correo%'=='' (GOTO usuariogitcorreo) else (GOTO usuariogitcorroborar)
:usuariogitcorreo
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Indicame Email
ECHO Indicame un correo electronico que quieras usar %nombre%
set /p correo=
GOTO usuariogitcorroborar
:usuariogitcorroborar
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
:usuarioverificargit
TITLE Corroborar datos
ECHO Verifica si estos datos que introduciste son correctos %nombre%
ECHO.
ECHO Nombre: %usuario%
ECHO Email: %correo%
ECHO.
ECHO Si son correctos introduce 1, si el nombre es incorrecto presiona 2, si el email es incorrecto presiona 3.
set /p confirmarusuario=
IF '%confirmarusuario%'=='1' GOTO eliminargit
IF '%confirmarusuario%'=='2' GOTO usuariogit
IF '%confirmarusuario%'=='3' (GOTO usuariogitcorreo) else (GOTO error24)

:error24
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce una opcion valida.
ECHO.
GOTO usuarioverificargit

:estatusgit
TITLE Verificando estatus de repositorio
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Verificando el estatus del repositorio %nombre%
ECHO.
ECHO Presiona una tecla cuando hayas terminado de ver el estatus.
ECHO.
ECHO.
git status
PAUSE>nul
GOTO eliminargit

:agregargit
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
:agregargiterror
TITLE Agregar archivos
ECHO %nombre% indicame si deseas agregar archivos especificos o todos.
ECHO.
ECHO Presiona 1 para archivos especificos, 2 para todos los archivos, 3 volver al menu anterior.
set /p gitagregar=
IF '%gitagregar%'=='1' GOTO archivosespecificos
IF '%gitagregar%'=='2' GOTO archivostodos
IF '%gitagregar%'=='3' (GOTO eliminargit) else (GOTO error16)

:error16
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce una opcion valida.
ECHO.
GOTO agregargiterror

:archivosespecificos
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Agregar archivos especificos
ECHO %nombre% indicame que archivo o parametro de archivos para agregar
set /p archivoagregar=
ECHO.
:archivosespecificosserror
TITLE Agregar archivos especificos
ECHO Me indicaste el archivo o el parametro %archivoagregar%
ECHO.
ECHO Es correcto?
set /p confirmacionarchivo=
IF '%confirmacionarchivo%'=='si' GOTO ejecutararchivoespecifico
IF '%confirmacionarchivo%'=='Si' GOTO ejecutararchivoespecifico
IF '%confirmacionarchivo%'=='SI' GOTO ejecutararchivoespecifico
IF '%confirmacionarchivo%'=='sI' GOTO ejecutararchivoespecifico
IF '%confirmacionarchivo%'=='no' GOTO archivosespecificos
IF '%confirmacionarchivo%'=='No' GOTO archivosespecificos
IF '%confirmacionarchivo%'=='NO' GOTO archivosespecificos
IF '%confirmacionarchivo%'=='nO' (GOTO archivosespecificos) else (GOTO error17)

:error17
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce si o no, segun sea el caso.
ECHO.
GOTO archivosespecificosserror

:ejecutararchivoespecifico
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Agregando archivo
ECHO %nombre% estoy agregando el archivo o archivos con parametro %archivoagregar%
ECHO.
ECHO Cuando hayas comprobado el estatus. Presiona una tecla para continuar
git add %archivoagregar%
git status
PAUSE>nul
GOTO eliminargit

:archivostodos
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Agregar todos los archivos
ECHO %nombre% me encuentro agregando todos los archivos.
ECHO.
ECHO Presiona una tecla cuando hayas terminado de validar el estatus.
git add --all
git status
PAUSE>nul
GOTO eliminargit

:commitgit
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Agregar mensaje
ECHO %nombre% indicame un mensaje para hacer el commit a los archivos agregados.
set /p mensaje=
:commitgiterror
TITLE Agregar mensaje
ECHO.
ECHO El mensaje que ingresaste fue: "%mensaje%"
ECHO.
ECHO Es correcto?
set /p confirmarmensaje=
IF '%confirmarmensaje%'=='si' GOTO ejecutarcommit
IF '%confirmarmensaje%'=='Si' GOTO ejecutarcommit
IF '%confirmarmensaje%'=='SI' GOTO ejecutarcommit
IF '%confirmarmensaje%'=='sI' GOTO ejecutarcommit
IF '%confirmarmensaje%'=='no' GOTO commitgit
IF '%confirmarmensaje%'=='No' GOTO commitgit
IF '%confirmarmensaje%'=='NO' GOTO commitgit
IF '%confirmarmensaje%'=='nO' (GOTO commitgit) else (GOTO error18)

:error18
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce si o no, segun sea el caso.
ECHO.
GOTO commitgiterror

:ejecutarcommit
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Ejecutando commit
ECHO %nombre% me encuentro haciendo el commit.
ECHO.
ECHO Cuando hayas comprobado el estatus. Presiona una tecla para continuar.
ECHO.
git commit -m "%mensaje%"
ECHO.
git status
PAUSE>nul
GOTO eliminargit

:eliminargitcommit
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Eliminar archivos del area de commit
ECHO %nombre% indicame el archivo o parametro de archivo a eliminar del area de commit.
set /p eliminarcommit=
:eliminargitcommiterror
TITLE Eliminar archivos del area de commit
ECHO.
ECHO El archivo o parametro que ingresaste fue: "%eliminarcommit%"
ECHO.
ECHO Es correcto?
set /p confirmareliminarcommit=
IF '%confirmareliminarcommit%'=='si' GOTO ejecutareliminarcommit
IF '%confirmareliminarcommit%'=='Si' GOTO ejecutareliminarcommit
IF '%confirmareliminarcommit%'=='SI' GOTO ejecutareliminarcommit
IF '%confirmareliminarcommit%'=='sI' GOTO ejecutareliminarcommit
IF '%confirmareliminarcommit%'=='no' GOTO eliminargitcommiterror
IF '%confirmareliminarcommit%'=='No' GOTO eliminargitcommiterror
IF '%confirmareliminarcommit%'=='NO' GOTO eliminargitcommiterror
IF '%confirmareliminarcommit%'=='nO' (GOTO eliminargitcommiterror) else (GOTO error20)

:error20
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce si o no, segun sea el caso.
ECHO.
GOTO eliminargitcommiterror

:ejecutareliminarcommit
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Eliminando archivos
ECHO %nombre% me encuentro eliminando.
ECHO.
ECHO Cuando hayas comprobado el estatus. Presiona una tecla para continuar.
ECHO.
git rm %eliminarcommit%
ECHO.
git status
PAUSE>nul
GOTO eliminargit

:cambiarnombregit
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Cambiar nombre a archivo
ECHO %nombre% indicame el archivo a renombrar.
set /p nombrearchivoviejo=
ECHO.
ECHO Ahora indicame el nuevo nombre.
set /p nombrearchivonuevo=
:cambiarnombregiterror
TITLE Cambiar nombre a archivo
ECHO.
ECHO El nombre del archivo a modificar fue esta: %nombrearchivoviejo%
ECHO Y el nuevo nombre fue este: %nombrearchivonuevo%
ECHO.
ECHO Es correcta la informacion?
set /p confirmarrenombrar=
IF '%confirmarrenombrar%'=='si' GOTO ejecutarrenombrar
IF '%confirmarrenombrar%'=='Si' GOTO ejecutarrenombrar
IF '%confirmarrenombrar%'=='SI' GOTO ejecutarrenombrar
IF '%confirmarrenombrar%'=='sI' GOTO ejecutarrenombrar
IF '%confirmarrenombrar%'=='no' GOTO cambiarnombregit
IF '%confirmarrenombrar%'=='No' GOTO cambiarnombregit
IF '%confirmarrenombrar%'=='NO' GOTO cambiarnombregit
IF '%confirmarrenombrar%'=='nO' (GOTO cambiarnombregit) else (GOTO error21)

:error21
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce si o no, segun sea el caso.
ECHO.
GOTO cambiarnombregiterror

:ejecutarrenombrar
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Renombrando archivo
ECHO %nombre% me encuentro renombrando el archivo.
ECHO.
ECHO Cuando hayas comprobado el estatus. Presiona una tecla para continuar.
ECHO.
git mv %nombrearchivoviejo% %nombrearchivonuevo%
ECHO.
git status
PAUSE>nul
GOTO eliminargit

:gitlog
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
:gitlogerror
TITLE Ver log del repositorio
ECHO Indicame el Log que usaremos %nombre%
ECHO.
ECHO Para ver el log largo introduce 1 o el log corto presiona 2, log personalizado presiona 3.
set /p introducegitlog=
IF '%introducegitlog%'=='1' GOTO gitloglargo
IF '%introducegitlog%'=='2' GOTO gitlogcorto
IF '%introducegitlog%'=='3' (GOTO gitlogperson) else (GOTO error22)

:error22
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce una opcion valida.
ECHO.
GOTO gitlogerror

:gitloglargo
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Ejecutando log largo
ECHO %nombre% aqui te muestro el log largo.
ECHO.
ECHO Cuando hayas comprobado el log. Presiona una tecla para continuar.
ECHO.
git log
PAUSE>nul
GOTO eliminargit

:gitlogcorto
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Ejecutando log corto
ECHO %nombre% aqui te muestro el log corto.
ECHO.
ECHO Cuando hayas comprobado el log. Presiona una tecla para continuar.
ECHO.
git log --pretty=oneline --graph
PAUSE>nul
GOTO eliminargit

:gitlogperson
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Parametros log personalizado
ECHO %nombre% indicame que parametros tomar para mostrar el log.
:diferenciasconfirmacion
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Deseas ver las diferencias introducidas en cada confirmacion?
set /p diferenciasconfir=
IF '%diferenciasconfir%'=='si' set diferenciasconfir=-p & GOTO estadisticasarchivosmod 
IF '%diferenciasconfir%'=='Si' set diferenciasconfir=-p & GOTO estadisticasarchivosmod
IF '%diferenciasconfir%'=='sI' set diferenciasconfir=-p & GOTO estadisticasarchivosmod
IF '%diferenciasconfir%'=='SI' set diferenciasconfir=-p & GOTO estadisticasarchivosmod
IF '%diferenciasconfir%'=='no' set diferenciasconfir=& GOTO estadisticasarchivosmod
IF '%diferenciasconfir%'=='No' set diferenciasconfir=& GOTO estadisticasarchivosmod
IF '%diferenciasconfir%'=='nO' set diferenciasconfir=& GOTO estadisticasarchivosmod
IF '%diferenciasconfir%'=='NO' (set diferenciasconfir=& GOTO estadisticasarchivosmod) else (GOTO diferenciasconfirmacion)
:estadisticasarchivosmod
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Deseas mostrar estadisticas sobre los archivos modificados en cada confirmacion?
set /p estadisticasarchivos=
IF '%estadisticasarchivos%'=='si' set estadisticasarchivos=--stat & GOTO mostrarlinearesumen
IF '%estadisticasarchivos%'=='Si' set estadisticasarchivos=--stat & GOTO mostrarlinearesumen
IF '%estadisticasarchivos%'=='sI' set estadisticasarchivos=--stat & GOTO mostrarlinearesumen
IF '%estadisticasarchivos%'=='SI' set estadisticasarchivos=--stat & GOTO mostrarlinearesumen
IF '%estadisticasarchivos%'=='no' set estadisticasarchivos=& GOTO mostrarlinearesumen
IF '%estadisticasarchivos%'=='No' set estadisticasarchivos=& GOTO mostrarlinearesumen
IF '%estadisticasarchivos%'=='nO' set estadisticasarchivos=& GOTO mostrarlinearesumen
IF '%estadisticasarchivos%'=='NO' (set estadisticasarchivos=& GOTO mostrarlinearesumen) else (GOTO estadisticasarchivosmod)
:mostrarlinearesumen
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Deseas mostrar solamente la linea de resumen de la opcion stat?.
set /p mostrarresumen=
IF '%mostrarresumen%'=='si' set mostrarresumen=--shortstat & GOTO mostrararchivosafectados
IF '%mostrarresumen%'=='Si' set mostrarresumen=--shortstat & GOTO mostrararchivosafectados
IF '%mostrarresumen%'=='sI' set mostrarresumen=--shortstat & GOTO mostrararchivosafectados
IF '%mostrarresumen%'=='SI' set mostrarresumen=--shortstat & GOTO mostrararchivosafectados
IF '%mostrarresumen%'=='no' set mostrarresumen=& GOTO mostrararchivosafectados
IF '%mostrarresumen%'=='No' set mostrarresumen=& GOTO mostrararchivosafectados
IF '%mostrarresumen%'=='nO' set mostrarresumen=& GOTO mostrararchivosafectados
IF '%mostrarresumen%'=='NO' (set mostrarresumen=& GOTO mostrararchivosafectados) else (GOTO mostrarlinearesumen)
:mostrararchivosafectados
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Deseas mostrar la lista de archivos afectados?.
set /p mostrararchivosafec=
IF '%mostrararchivosafec%'=='si' GOTO archivosafectadoslinea
IF '%mostrararchivosafec%'=='Si' GOTO archivosafectadoslinea
IF '%mostrararchivosafec%'=='sI' GOTO archivosafectadoslinea
IF '%mostrararchivosafec%'=='SI' GOTO archivosafectadoslinea
IF '%mostrararchivosafec%'=='no' GOTO abrevcommit
IF '%mostrararchivosafec%'=='No' GOTO abrevcommit
IF '%mostrararchivosafec%'=='nO' GOTO abrevcommit
IF '%mostrararchivosafec%'=='NO' (GOTO abrevcommit) else (GOTO mostrararchivosafectados)
:archivosafectadoslinea
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce 1 para mostrar la lista de archivos afectados o Introduce 2 incluir ademas si fueron agregados.
ECHO modificados o eliminados. 
set /p mostrarnombrearchivos=
IF '%mostrarnombrearchivos%'=='1' set mostrarnombrearchivos=--name-only & GOTO abrevcommit
IF '%mostrarnombrearchivos%'=='2' (set mostrarnombrearchivos=--name-status & GOTO abrevcommit) else (GOTO archivosafectadoslinea)
:abrevcommit
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Mostrar solamente los primero caracteres de la suma SHA-1?
set /p abreviarcommit=
IF '%abreviarcommit%'=='si' set abreviarcommit=--abbrev-commit & GOTO fecharelativa
IF '%abreviarcommit%'=='Si' set abreviarcommit=--abbrev-commit & GOTO fecharelativa
IF '%abreviarcommit%'=='sI' set abreviarcommit=--abbrev-commit & GOTO fecharelativa
IF '%abreviarcommit%'=='SI' set abreviarcommit=--abbrev-commit & GOTO fecharelativa
IF '%abreviarcommit%'=='no' set abreviarcommit=& GOTO fecharelativa
IF '%abreviarcommit%'=='No' set abreviarcommit=& GOTO fecharelativa
IF '%abreviarcommit%'=='nO' set abreviarcommit=& GOTO fecharelativa
IF '%abreviarcommit%'=='NO' (set abreviarcommit=& GOTO fecharelativa) else (GOTO abrevcommit)
:fecharelativa
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Mostrar fecha en formato relativo?
set /p relativafecha=
IF '%relativafecha%'=='si' set relativafecha=--relative-date & GOTO grafico
IF '%relativafecha%'=='Si' set relativafecha=--relative-date & GOTO grafico
IF '%relativafecha%'=='sI' set relativafecha=--relative-date & GOTO grafico
IF '%relativafecha%'=='SI' set relativafecha=--relative-date & GOTO grafico
IF '%relativafecha%'=='no' set relativafecha=& GOTO grafico
IF '%relativafecha%'=='No' set relativafecha=& GOTO grafico
IF '%relativafecha%'=='nO' set relativafecha=& GOTO grafico
IF '%relativafecha%'=='NO' (set relativafecha=& GOTO grafico) else (GOTO fecharelativa)
:grafico
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Mostrar grafico con la historia de ramificaciones y uniones?
set /p formatografico=
IF '%formatografico%'=='si' set formatografico=--graph & GOTO formatoalternativo
IF '%formatografico%'=='Si' set formatografico=--graph & GOTO formatoalternativo
IF '%formatografico%'=='sI' set formatografico=--graph & GOTO formatoalternativo
IF '%formatografico%'=='SI' set formatografico=--graph & GOTO formatoalternativo
IF '%formatografico%'=='no' set formatografico=& GOTO formatoalternativo
IF '%formatografico%'=='No' set formatografico=& GOTO formatoalternativo
IF '%formatografico%'=='nO' set formatografico=& GOTO formatoalternativo
IF '%formatografico%'=='NO' (set formatografico=& GOTO formatoalternativo) else (GOTO grafico)
:formatoalternativo
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Mostrar las confirmaciones usando un formato alternativo?
set /p alternarformato=
IF '%alternarformato%'=='si' GOTO formatoalterpositivo
IF '%alternarformato%'=='Si' GOTO formatoalterpositivo
IF '%alternarformato%'=='sI' GOTO formatoalterpositivo
IF '%alternarformato%'=='SI' GOTO formatoalterpositivo
IF '%alternarformato%'=='no' set alternarformato=& GOTO gitlogsalida
IF '%alternarformato%'=='No' set alternarformato=& GOTO gitlogsalida
IF '%alternarformato%'=='nO' set alternarformato=& GOTO gitlogsalida
IF '%alternarformato%'=='NO' (set alternarformato=& GOTO gitlogsalida) else (GOTO formatoalternativo)
:formatoalterpositivo
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce 1 para formatear: oneline
ECHO Introduce 2 para formatear: short
ECHO Introduce 3 para formatear: full
ECHO Introduce 4 para formatear: fuller
ECHO Introduce 5 para formatear: format
set /p formatointroducir=
IF '%formatointroducir%'=='1' set formatointroducir=--pretty=oneline & GOTO gitlogsalida
IF '%formatointroducir%'=='2' set formatointroducir=--pretty=short & GOTO gitlogsalida
IF '%formatointroducir%'=='3' set formatointroducir=--pretty=full & GOTO gitlogsalida
IF '%formatointroducir%'=='4' set formatointroducir=--pretty=fuller & GOTO gitlogsalida
IF '%formatointroducir%'=='5' (set formatointroducir=--pretty=format:& GOTO prettyformato) else (GOTO formatoalterpositivo)
:prettyformato
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce 1 para ver hash de confirmacion, 2 para ver el hash abreviado, 3 para no incluir este parametro
set /p hashformato=
IF '%hashformato%'=='1' set hashformato=%%H & GOTO hasharbol
IF '%hashformato%'=='2' set hashformato=%%h & GOTO hasharbol
IF '%hashformato%'=='3' (set hashformato=& GOTO hasharbol) else (GOTO prettyformato)
:hasharbol
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce 1 para ver hash de arbol, 2 para ver el hash abreviado, 3 para no incluir este parametro
set /p arbolformato=
IF '%arbolformato%'=='1' set arbolformato=%%T & GOTO confirmpadre
IF '%arbolformato%'=='2' set arbolformato=%%t & GOTO confirmpadre
IF '%arbolformato%'=='3' (set arbolformato=& GOTO confirmpadre) else (GOTO hasharbol)
:confirmpadre
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce 1 para ver hash de confirmaciones padre, 2 para ver el hash abreviado, 3 para no incluir este parametro
set /p padreformato=
IF '%padreformato%'=='1' set padreformato=%%P & GOTO nombreautor
IF '%padreformato%'=='2' set padreformato=%%p & GOTO nombreautor
IF '%padreformato%'=='3' (set padreformato=& GOTO nombreautor) else (GOTO confirmpadre)
:nombreautor
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Mostrar nombre de autor?
set /p autornombre=
IF '%autornombre%'=='si' set autornombre=%%an & GOTO emailautor
IF '%autornombre%'=='Si' set autornombre=%%an & GOTO emailautor
IF '%autornombre%'=='sI' set autornombre=%%an & GOTO emailautor
IF '%autornombre%'=='SI' set autornombre=%%an & GOTO emailautor
IF '%autornombre%'=='no' set autornombre=& GOTO emailautor
IF '%autornombre%'=='No' set autornombre=& GOTO emailautor
IF '%autornombre%'=='nO' set autornombre=& GOTO emailautor
IF '%autornombre%'=='NO' (set autornombre=& GOTO emailautor) else (GOTO nombreautor)
:emailautor
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Mostrar email de autor?
set /p autoremail=
IF '%autoremail%'=='si' set autoremail=%%ae & GOTO fechaautoria
IF '%autoremail%'=='Si' set autoremail=%%ae & GOTO fechaautoria
IF '%autoremail%'=='sI' set autoremail=%%ae & GOTO fechaautoria
IF '%autoremail%'=='SI' set autoremail=%%ae & GOTO fechaautoria
IF '%autoremail%'=='no' set autoremail=& GOTO fechaautoria
IF '%autoremail%'=='No' set autoremail=& GOTO fechaautoria
IF '%autoremail%'=='nO' set autoremail=& GOTO fechaautoria
IF '%autoremail%'=='NO' (set autoremail=& GOTO fechaautoria) else (GOTO emailautor)
:fechaautoria
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce 1 para ver fecha de autoria, 2 para ver fecha autoria relativa, 3 para no incluir este parametro
set /p autoriafecha=
IF '%autoriafecha%'=='1' set autoriafecha=%%ad & GOTO nombreconfirmador
IF '%autoriafecha%'=='2' set autoriafecha=%%ar & GOTO nombreconfirmador
IF '%autoriafecha%'=='3' (set autoriafecha=& GOTO nombreconfirmador) else (GOTO fechaautoria)
:nombreconfirmador
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Mostrar nombre de confirmador?
set /p confirmadornombre=
IF '%confirmadornombre%'=='si' set confirmadornombre=%%cn & GOTO emailconfirmador
IF '%confirmadornombre%'=='Si' set confirmadornombre=%%cn & GOTO emailconfirmador
IF '%confirmadornombre%'=='sI' set confirmadornombre=%%cn & GOTO emailconfirmador
IF '%confirmadornombre%'=='SI' set confirmadornombre=%%cn & GOTO emailconfirmador
IF '%confirmadornombre%'=='no' set confirmadornombre=& GOTO emailconfirmador
IF '%confirmadornombre%'=='No' set confirmadornombre=& GOTO emailconfirmador
IF '%confirmadornombre%'=='nO' set confirmadornombre=& GOTO emailconfirmador
IF '%confirmadornombre%'=='NO' (set confirmadornombre=& GOTO emailconfirmador) else (GOTO nombreconfirmador)
:emailconfirmador
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Mostrar email de confirmador?
set /p confirmadoremail=
IF '%confirmadoremail%'=='si' set confirmadoremail=%%ce & GOTO fechaconfirmacion
IF '%confirmadoremail%'=='Si' set confirmadoremail=%%ce & GOTO fechaconfirmacion
IF '%confirmadoremail%'=='sI' set confirmadoremail=%%ce & GOTO fechaconfirmacion
IF '%confirmadoremail%'=='SI' set confirmadoremail=%%ce & GOTO fechaconfirmacion
IF '%confirmadoremail%'=='no' set confirmadoremail=& GOTO fechaconfirmacion
IF '%confirmadoremail%'=='No' set confirmadoremail=& GOTO fechaconfirmacion
IF '%confirmadoremail%'=='nO' set confirmadoremail=& GOTO fechaconfirmacion
IF '%confirmadoremail%'=='NO' (set confirmadoremail=& GOTO fechaconfirmacion) else (GOTO emailconfirmador)
:fechaconfirmacion
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce 1 para ver fecha de confirmacion, 2 para ver fecha confirmacion relativ, 3 no incluir este parametro
set /p confirmacionfecha=
IF '%confirmacionfecha%'=='1' set confirmacionfecha=%%cd & GOTO asunto
IF '%confirmacionfecha%'=='2' set confirmacionfecha=%%cr & GOTO asunto
IF '%confirmacionfecha%'=='3' (set confirmacionfecha=& GOTO asunto) else (GOTO fechaconfirmacion)
:asunto
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Mostrar asunto?
set /p asuntomensaje=
IF '%asuntomensaje%'=='si' set asuntomensaje=%%s& GOTO gitlogsalidapretty
IF '%asuntomensaje%'=='Si' set asuntomensaje=%%s& GOTO gitlogsalidapretty
IF '%asuntomensaje%'=='sI' set asuntomensaje=%%s& GOTO gitlogsalidapretty
IF '%asuntomensaje%'=='SI' set asuntomensaje=%%s& GOTO gitlogsalidapretty
IF '%asuntomensaje%'=='no' set asuntomensaje=& GOTO gitlogsalidapretty
IF '%asuntomensaje%'=='No' set asuntomensaje=& GOTO gitlogsalidapretty
IF '%asuntomensaje%'=='nO' set asuntomensaje=& GOTO gitlogsalidapretty
IF '%asuntomensaje%'=='NO' (set asuntomensaje=& GOTO gitlogsalidapretty) else (GOTO asunto)
:gitlogsalida
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO %nombre% deseas agregar un limitador de salida del historial?
ECHO.
set /p limitadorsalida=
IF '%limitadorsalida%'=='si' GOTO ultimasconfirmaciones
IF '%limitadorsalida%'=='Si' GOTO ultimasconfirmaciones
IF '%limitadorsalida%'=='sI' GOTO ultimasconfirmaciones
IF '%limitadorsalida%'=='SI' GOTO ultimasconfirmaciones
IF '%limitadorsalida%'=='no' GOTO gitlogcompleto
IF '%limitadorsalida%'=='No' GOTO gitlogcompleto
IF '%limitadorsalida%'=='nO' GOTO gitlogcompleto
IF '%limitadorsalida%'=='NO' (GOTO gitlogcompleto) else (GOTO gitlogsalida)
:gitlogsalidapretty
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO %nombre% deseas agregar un limitador de salida del historial?
ECHO.
set /p limitadorsalida=
IF '%limitadorsalida%'=='si' GOTO ultimasconfirmacionespretty
IF '%limitadorsalida%'=='Si' GOTO ultimasconfirmacionespretty
IF '%limitadorsalida%'=='sI' GOTO ultimasconfirmacionespretty
IF '%limitadorsalida%'=='SI' GOTO ultimasconfirmacionespretty
IF '%limitadorsalida%'=='no' GOTO gitlogcompletopretty
IF '%limitadorsalida%'=='No' GOTO gitlogcompletopretty
IF '%limitadorsalida%'=='nO' GOTO gitlogcompletopretty
IF '%limitadorsalida%'=='NO' (GOTO gitlogcompletopretty) else (GOTO gitlogsalidapretty)
:ultimasconfirmacionespretty
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce la cantidad de ultimas confirmaciones a mostrar, para omitir presiona enter sin introducir datos
set /p cantidadconfirm=
IF '%cantidadconfirm%'=='' (set cantidadconfirm= & GOTO despuesfechapretty) else (set cantidadconfirm=-%cantidaconfirm% & GOTO despuesfechapretty)
:despuesfechapretty
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce una fecha para mostrar confirmaciones despues de la fecha indicada, introduce la fecha en los formatos
ECHO siguientes, por ejemplo: 2.weeks (en ingles) o AAAA-MM-DD o 2 years 1 day 3 minutes ago (en ingles).
ECHO Para omitir presiona enter sin introducir datos
set /p fechaformatodespues=
IF '%fechaformatodespues%'=='' (set fechaformatodespues= & GOTO antesfechapretty) else (set fechaformatodespues=--since=%fechaformatodespues% & GOTO antesfechapretty)
:antesfechapretty
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce una fecha para mostrar confirmaciones antes de la fecha indicada, introduce la fecha en los formatos
ECHO siguientes, por ejemplo: 2.weeks (en ingles) o AAAA-MM-DD o 2 years 1 day 3 minutes ago (en ingles).
ECHO Para omitir presiona enter sin introducir datos
set /p fechaformatoantes=
IF '%fechaformatoantes%'=='' (set fechaformatoantes= & GOTO autorarchivopretty) else (set fechaformatoantes=--before=%fechaformatoantes% & GOTO autorarchivopretty)
:autorarchivopretty
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce un nombre de autor para mostrar solo las confirmaciones que corresponden con ese autor.
ECHO Para omitir presiona enter sin introducir datos.
set /p autorfiltro=
IF '%autorfiltro%'=='' (set autorfiltro= & GOTO committerarchivopretty) else (set autorfiltro=--author=%autorfiltro% & GOTO committerarchivopretty)
:committerarchivopretty
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce un nombre de committer para mostrar solo las confirmaciones que corresponden con ese committer.
ECHO Para omitir presiona enter sin introducir datos.
set /p committerfiltro=
IF '%committerfiltro%'=='' (set committerfiltro= & GOTO cadenaconfirmacionespretty) else (set committerfiltro=--committer=%committerfiltro% & GOTO cadenaconfirmacionespretty)
:cadenaconfirmacionespretty
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce una cadena para mostrar solo confirmaciones que agregen o eliminen codigo que correspondan con esa
ECHO cadena. Para omitir presiona enter sin introducir datos.
set /p agregareliminarcadena=
IF '%agregareliminarcadena%'=='' (set agregareliminarcadena= & GOTO gitlogcompletopretty) else (set agregareliminarcadena=-S%agregareliminarcadena% & GOTO gitlogcompletopretty)
:ultimasconfirmaciones
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce la cantidad de ultimas confirmaciones a mostrar, para omitir presiona enter sin introducir datos
set /p cantidadconfirm=
IF '%cantidadconfirm%'=='' (set cantidadconfirm= & GOTO despuesfecha) else (set cantidadconfirm=-%cantidaconfirm% & GOTO despuesfecha)
:despuesfecha
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce una fecha para mostrar confirmaciones despues de la fecha indicada, introduce la fecha en los formatos
ECHO siguientes, por ejemplo: 2.weeks (en ingles) o AAAA-MM-DD o 2 years 1 day 3 minutes ago (en ingles).
ECHO Para omitir presiona enter sin introducir datos
set /p fechaformatodespues=
IF '%fechaformatodespues%'=='' (set fechaformatodespues= & GOTO antesfecha) else (set fechaformatodespues=--since=%fechaformatodespues% & GOTO antesfecha)
:antesfecha
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce una fecha para mostrar confirmaciones antes de la fecha indicada, introduce la fecha en los formatos
ECHO siguientes, por ejemplo: 2.weeks (en ingles) o AAAA-MM-DD o 2 years 1 day 3 minutes ago (en ingles).
ECHO Para omitir presiona enter sin introducir datos
set /p fechaformatoantes=
IF '%fechaformatoantes%'=='' (set fechaformatoantes= & GOTO autorarchivo) else (set fechaformatoantes=--before=%fechaformatoantes% & GOTO autorarchivo)
:autorarchivo
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce un nombre de autor para mostrar solo las confirmaciones que corresponden con ese autor.
ECHO Para omitir presiona enter sin introducir datos.
set /p autorfiltro=
IF '%autorfiltro%'=='' (set autorfiltro= & GOTO committerarchivo) else (set autorfiltro=--author=%autorfiltro% & GOTO committerarchivo)
:committerarchivo
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce un nombre de committer para mostrar solo las confirmaciones que corresponden con ese committer.
ECHO Para omitir presiona enter sin introducir datos.
set /p committerfiltro=
IF '%committerfiltro%'=='' (set committerfiltro= & GOTO cadenaconfirmaciones) else (set committerfiltro=--committer=%committerfiltro% & GOTO cadenaconfirmaciones)
:cadenaconfirmaciones
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Introduce una cadena para mostrar solo confirmaciones que agregen o eliminen codigo que correspondan con esa
ECHO cadena. Para omitir presiona enter sin introducir datos.
set /p agregareliminarcadena=
IF '%agregareliminarcadena%'=='' (set agregareliminarcadena= & GOTO gitlogcompleto) else (set agregareliminarcadena=-S%agregareliminarcadena% & GOTO gitlogcompleto)

:gitlogcompleto
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO %nombre% estoy mostrando el log con todos lo parametros que me indicaste.
ECHO.
ECHO Presiona enter para ir viendo el log, luego cuando llegues al final presiona q y luego presiona una tecla
ECHO para salir.
ECHO.
ECHO.
git log %diferenciasconfir%%estadisticasarchivos%%mostrarresumen%%mostrarnombrearchivos%%abreviarcommit%%relativafecha%%formatografico%%formatointroducir% %cantidadconfirm%%fechaformatodespues%%fechaformatoantes%%autorfiltro%%committerfiltro%%agregareliminarcadena%
set diferenciasconfir=
set estadisticasarchivos=
set mostrarresumen=
set mostrarnombrearchivos=
set abreviarcommit=
set relativafecha=
set formatografico=
set formatointroducir=
set cantidadconfirm=
set fechaformatodespues=
set fechaformatoantes=
set autorfiltro=
set committerfiltro=
set agregareliminarcadena=
PAUSE>nul
GOTO eliminargit

:gitlogcompletopretty
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO %nombre% estoy mostrando el log con todos lo parametros que me indicaste.
ECHO.
ECHO Presiona enter para ir viendo el log, luego cuando llegues al final presiona q y luego presiona una tecla
ECHO para salir.
ECHO.
ECHO.
git log %diferenciasconfir%%estadisticasarchivos%%mostrarresumen%%mostrarnombrearchivos%%abreviarcommit%%relativafecha%%formatografico%%formatointroducir%"%hashformato%%arbolformato%%padreformato%%autornombre%%autoremail%%autoriafecha%%confirmadornombre%%confirmadoremail%%confirmacionfecha%%asuntomensaje%" %cantidadconfirm%%fechaformatodespues%%fechaformatoantes%%autorfiltro%%committerfiltro%%agregareliminarcadena%
set diferenciasconfir=
set estadisticasarchivos=
set mostrarresumen=
set mostrarnombrearchivos=
set abreviarcommit=
set relativafecha=
set formatografico=
set formatointroducir=
set cantidadconfirm=
set fechaformatodespues=
set fechaformatoantes=
set autorfiltro=
set committerfiltro=
set agregareliminarcadena=
set hashformato=
set arbolformato=
set padreformato=
set autornombre=
set autoremail=
set autoriafecha=
set confirmadornombre=
set confirmadoremail=
set confirmacionfecha=
set asuntomensaje=
PAUSE>nul
GOTO eliminargit

:subirgithub
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Subir repositorio a GitHub
ECHO %nombre% indicame la ruta url a la cual subir el repositorio.
set /p githuburl=
ECHO.
ECHO Ahora indicame la rama
set /p ramagithub=
:subirgithuberror
TITLE Subir repositorio a GitHub
ECHO.
ECHO La ruta especificada fue esta: %githuburl%
ECHO Y la rama especificada fue esta: %ramagithub%
ECHO.
ECHO Es correcta la informacion?
set /p confirmargithub=
IF '%confirmargithub%'=='si' GOTO ejecutargithub
IF '%confirmargithub%'=='Si' GOTO ejecutargithub
IF '%confirmargithub%'=='SI' GOTO ejecutargithub
IF '%confirmargithub%'=='sI' GOTO ejecutargithub
IF '%confirmargithub%'=='no' GOTO subirgithub
IF '%confirmargithub%'=='No' GOTO subirgithub
IF '%confirmargithub%'=='NO' GOTO subirgithub
IF '%confirmargithub%'=='nO' (GOTO subirgithub) else (GOTO error19)

:error19
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce si o no, segun sea el caso.
ECHO.
GOTO subirgiterror

:ejecutargithub
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Subiendo repositorio a GitHub
ECHO %nombre% me encuentro subiendo el repositorio.
ECHO.
ECHO Cuando haya finalizado. Presiona una tecla para continuar.
ECHO.
git remote add origin %githuburl%
ECHO.
git push -u origin %ramagithub%
PAUSE>nul
GOTO eliminargit

:clonargithub
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Clonar repositorio de GitHub
ECHO %nombre% indicame la ruta url de la cual clonar el repositorio.
set /p githubclonar=
ECHO Indicame el nombre del archivo de GitHub (no ruta) ej: nombre-archivo. NO: github.com/usuario/nombre-archivo
set /p nombreclonar=
:clonargithuberror
TITLE Clonar repositorio de GitHub
ECHO.
ECHO La ruta especificada fue esta: %githubclonar%
ECHO El nombre de proyecto en GitHub es este: %nombreclonar% 
ECHO.
ECHO Es correcta la informacion?
ECHO.
ECHO Presiona x para volver al menu git inicial.
set /p confirmarclonar=
IF '%confirmarclonar%'=='si' GOTO ejecutarclonar
IF '%confirmarclonar%'=='Si' GOTO ejecutarclonar
IF '%confirmarclonar%'=='SI' GOTO ejecutarclonar
IF '%confirmarclonar%'=='sI' GOTO ejecutarclonar
IF '%confirmarclonar%'=='no' GOTO clonargithub
IF '%confirmarclonar%'=='No' GOTO clonargithub
IF '%confirmarclonar%'=='NO' GOTO clonargithub
IF '%confirmarclonar%'=='x' GOTO clonargithub
IF '%confirmarclonar%'=='X' GOTO eliminargit
IF '%confirmarclonar%'=='nO' (GOTO clonargithub) else (GOTO error23)

:error23
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Disculpa no entendi esa opcion %nombre%. Introduce si o no, segun sea el caso.
ECHO.
GOTO clonargithuberror

:ejecutarclonar
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Clonando repositorio de GitHub
ECHO %nombre% me encuentro clonando el repositorio.
ECHO.
ECHO Cuando haya finalizado. Presiona una tecla para continuar.
ECHO.
git clone %githubclonar%
set carpetagit= %carpetagit%\%nombreclonar%
cd..
cd %carpetagit%
git log
PAUSE>nul
GOTO eliminargit

rem --------------------------------------------------------------------- Noticias Deportivas ----------------------------------------------------------------------------------
:deportivas
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendo MARCA.com
ECHO Estoy abriendo la pagina de deportes Marca.com, por favor espera %nombre%.
START "" "http://www.marca.com"
timeout /t 6
cls
GOTO eliminarmain

rem --------------------------------------------------------------------- Busqueda Google ----------------------------------------------------------------------------------
:google
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendo Buscador de GOOGLE
ECHO Estoy abriendo el buscador de Google para que hagas la busqueda, por favor espera %nombre%.
START "" "http://www.google.co.ve"
timeout /t 6
cls
GOTO eliminarmain

rem --------------------------------------------------------------------- Redes Sociales ----------------------------------------------------------------------------------
:rrss
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendos RR.SS 
ECHO Estoy abriendo tu red social Facebook, por favor espera %nombre%.
START "" "http://www.facebook.com"
timeout /t 6
ECHO.
ECHO Estoy abriendo tu red social Twitter, por favor espera %nombre%.
START "" "http://www.twitter.com"
timeout /t 6
cls
GOTO eliminarmain

rem --------------------------------------------------------------------- Menu Bancos ----------------------------------------------------------------------------------
:eliminarbanco
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO banco

:banco
TITLE Seleccione el banco a abrir
ECHO Que banco deseas abrir %nombre%?
ECHO.
ECHO Banesco? Presione 1.
ECHO Cestaticket? Presione 2.
ECHO Provincial? Presione 3.
ECHO Mercantil? Presione 4.
ECHO Pagos Mercantil? Presione 5.
ECHO Banco de Venezuela? Presione 6.
ECHO Bancaribe? Presione 7.
ECHO BNC? Presione 8.
ECHO Volver al menu? Presione 9.
set /p selbanco=
IF '%selbanco%'=='1' GOTO banesco
IF '%selbanco%'=='2' GOTO cestaticket
IF '%selbanco%'=='3' GOTO provincial
IF '%selbanco%'=='4' GOTO mercantil
IF '%selbanco%'=='5' GOTO pagosmercantil
IF '%selbanco%'=='6' GOTO venezuela
IF '%selbanco%'=='7' GOTO bancaribe
IF '%selbanco%'=='8' GOTO bnc
IF '%selbanco%'=='9' (GOTO eliminarmain) else (GOTO error9)

:banesco
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendo BANESCO
ECHO Abriendo Banesco Online %nombre%, por favor espera.
START "" "https://www.banesconline.com/mantis/WebSite/login.aspx"
timeout /t 6
cls
GOTO eliminarbanco

:cestaticket
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendo TODOTICKET
ECHO Abriendo Portal Todoticket, por favor espera %nombre% 
START "" "https://portal.todoticket.com.ve/irj/portal"
timeout /t 6
cls
GOTO eliminarbanco

:provincial
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendo PROVINCIAL
ECHO. Abriendo BBVA Provinet. Espera por favor %nombre%
START "" "https://www.bbvaprovinet.provincial.com/personas/BBVAProvincial.html"
timeout /t 6
cls
GOTO eliminarbanco

:mercantil
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendo MERCANTIL
ECHO. Abriendo Mercantil En Linea, espera un poco %nombre%
START "" "https://www30.mercantilbanco.com/olb/InitMerc?from=index"
timeout /t 6
cls
GOTO eliminarbanco

:pagosmercantil
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendo PORTAL DE PAGOS MERCANTIL
ECHO Abriendo Portal de Pagos de Banco Mercantil, espera %nombre% un poco
START "" "https://www.portaldepagosmercantil.com/Default.aspx"
timeout /t 6
cls
GOTO eliminarbanco

:venezuela
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendo BANCO DE VENEZUELA
ECHO Abriendo BDV En Linea, espera por favor %nombre%
START "" "https://bdvenlinea.banvenez.com"
timeout /t 6
cls
GOTO eliminarbanco

:bancaribe
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendo BANCARIBE
ECHO Abriendo Portal Bancaribe, por favor espera %nombre%.
START "" "https://www3.bancaribe.com.ve/bcn/"
timeout /t 6
cls
GOTO eliminarbanco

:bnc
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendo BANCO NACIONAL DE CREDITO
ECHO Abriendo Banco BNC, espera %nombre% un poco
START "" "https://secure.bnc.com.ve/LoginCP.asp"
timeout /t 6
cls
GOTO eliminarbanco

:error9
TITLE Opcion invalida.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO No me asignaron esa funcion todavia %nombre%. Ingresa una opcion valida.
ECHO.
GOTO banco

rem --------------------------------------------------------------------- Musica ----------------------------------------------------------------------------------------
:musica
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abriendo iTunes
ECHO Abriendo iTunes %nombre% para que escuches musica...
cd..
cd "C:\Program Files\iTunes\"
START "" iTunes.exe
timeout /t 6
cls
GOTO eliminarmain

rem --------------------------------------------------------------------- Menu Sitio Web ----------------------------------------------------------------------------------
:sitioweb
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Abrir Sitio Web en localhost
ECHO %nombre% voy a necesitar que me indiques algunas cosas.
ECHO.
ECHO Indicame el nombre de la carpeta donde se encuentra el sitio web. Si el archivo a abrir se encuentra en una
ECHO subcarpeta indicala tambien colocando el / ANTES del nombre de cada subcarpeta (no introduzcas / al final).
set /p rutacarpeta=
cls
GOTO eliminarconfirmarruta

:eliminarconfirmarruta
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO confirmarruta

:confirmarruta
TITLE Confirmacion de ruta
ECHO Esta fue la ruta de carpeta que pusiste %nombre%: %rutacarpeta%
ECHO.
ECHO Es correcta?
ECHO.
ECHO Si quieres volver al menu inicial presiona x.
set /p rutacorrecta=
IF '%rutacorrecta%'=='si' GOTO nombrearchivo
IF '%rutacorrecta%'=='Si' GOTO nombrearchivo
IF '%rutacorrecta%'=='SI' GOTO nombrearchivo
IF '%rutacorrecta%'=='sI' GOTO nombrearchivo
IF '%rutacorrecta%'=='no' GOTO sitioweb
IF '%rutacorrecta%'=='No' GOTO sitioweb
IF '%rutacorrecta%'=='NO' GOTO sitioweb
IF '%rutacorrecta%'=='x' GOTO eliminarmain
IF '%rutacorrecta%'=='X' GOTO eliminarmain
IF '%rutacorrecta%'=='nO' (GOTO sitioweb) else (GOTO error11)

:error11
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Opcion no valida.
ECHO Opcion no configurada %nombre%. Intenta nuevamente.
ECHO.
GOTO confirmarruta

:nombrearchivo
cls
TITLE Introducir nombre de archivo
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO %nombre% indicame el nombre del archivo con su respectiva extension (de ser necesario).
set /p archivonombre=
cls
GOTO indicarpuerto

:indicarpuerto
TITLE Indicar puerto
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Ahora %nombre% indicame el puerto (Si es el puerto predeterminado, solo dale enter)
set /p puertolocal=
cls
IF '%puertolocal%'=='' set puertolocal=80
GOTO eliminarconfirmararchivo

:eliminarconfirmararchivo
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
GOTO confirmararchivo

:confirmararchivo
TITLE Confirmacion de Nombre archivo.
ECHO %nombre% Verifica si los datos son correctos
ECHO Ruta: %rutacarpeta%
ECHO Archivo: %archivonombre%
IF '%puertolocal%'=='80' (ECHO Puerto: Puerto predeterminado. NOTA: en Windows normalmente es el Puerto 80.) else (ECHO Puerto: %puertolocal%)
ECHO.
ECHO Si es correcto presiona 1, de lo contrario presiona 2.
set /p archivocorrecto=
IF '%archivocorrecto%'=='1' GOTO abrirsitio
IF '%archivocorrecto%'=='2' (GOTO eliminarconfirmarruta) else (GOTO error12)

:error12
cls
TITLE Opcion no valida.
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO Opcion no configurada %nombre%. Intenta nuevamente.
ECHO.
GOTO confirmararchivo

:abrirsitio
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Iniciando sitio web.
ECHO Iniciando sitio web %nombre%, espera por favor.
START "" "http://localhost:%puertolocal%/%rutacarpeta%/%archivonombre%"
timeout /t 6
cls
GOTO otroarchivo

:otroarchivo
TITLE Abrir otro archivo
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO %nombre% Deseas abrir otro archivo?
set /p archivosig=
IF '%archivosig%'=='si' GOTO sitioweb
IF '%archivosig%'=='Si' GOTO sitioweb
IF '%archivosig%'=='SI' GOTO sitioweb
IF '%archivosig%'=='sI' GOTO sitioweb
IF '%archivosig%'=='no' GOTO eliminarmain
IF '%archivosig%'=='No' GOTO eliminarmain
IF '%archivosig%'=='NO' GOTO eliminarmain
IF '%archivosig%'=='nO' (GOTO eliminarmain) else (GOTO error13)

:error13
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
TITLE Opcion no valida.
ECHO Opcion no configurada %nombre%. Intenta nuevamente.
GOTO otroarchivo

rem --------------------------------------------------------------------- Finalizacion ----------------------------------------------------------------------------------
:final
TITLE Gracias por usarme. Ten un hermoso dia.
cls
ECHO ==========================================
ECHO =========== Asistente Virtual ============
ECHO ==========================================
ECHO %nombre% es un placer servirte, si necesitas de mi nuevamente, solo tienes que inciarme nuevamente.
ECHO.
ECHO Ten un hermoso dia. Presiona cualquier tecla para finalizar.
PAUSE>nul