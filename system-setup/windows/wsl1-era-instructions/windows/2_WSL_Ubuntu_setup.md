# Configurando WSL y la aplicación de Ubuntu

**Antes de comenzar asegúrate de tener la [verisón más reciente de Windows 10](https://support.microsoft.com/en-us/help/4028685/windows-10-get-the-update).**

**No se espera que entiendas todo lo que está pasando mientras completas los pasos de esta guía. Es importante que no te saltes ningún paso.  Por favor sigue las instrucciones una por una.**

## Resumen  
 
Windows no se ejecuta en un entorno POSIX. Bastante del software que utilizas como desarrollador está diseñado para ejecutarse en entornos POSIX, y muchos de los servidores web también se están ejecutando en algún entorno POSIX. Esto causa problemas porque Windows utiliza comandos de consola diferentes y no todos estos comandos se traducen a POSIX bien.

Windows ha lanzado una funcionalidad disponible para todas las PCs con Windows 10 llamada Windows Subsystem for Linux, también conocido como WSL. WSL te da la capacidad de añadir una distribución de Linux como Ubuntu y montarla directamente en el Sistema de Archivos de Windows.

**Ubuntu puede _leer y escribir_ los ** archivos de Ubuntu y Windows, **Windows solo puede _leer y escribir_ archivos de Windows **, y **_leer_ archivos de Ubuntu**, pero **_no puede_ escribir archivos de Ubuntu**. Saber qué archivos pertenercen a cuál sistema de archivos es importante por esto.

Antes de que profundicemos en cómo utilizar la aplicación de Ubuntu y WSL, hablemos de una de las cosas más importantes, la cual es **conocer tus Sistemas de Archivos**

Hay dos sistemas de archivos aquí:

1. El sistema de archivos de Windows
2. El sistema de archivos de Ubuntu.


## Instrucciones de Instalación:

### Por favor lee cada uno de estos pasos antes de comenzar

**Sigue las instrucciones una por una, ¡presta atención a los detalles!**

#### 1. Activa la Funcionalidad WSL en Windows.

1. Haz click derecho en el menú de inicio y luego en Configuración.
2. En la barra de búsqueda, escribe `Activar o desactivar las características de Windows` y haz click en el elemento que aparece en la lista.
3. Aparecerá una ventana con una lista de carpetas con casillas al lado. Baja y selecciona la casilla que dice `Subsistema de Windows para Linux`.

Esto instalará los archivos necesarios. Sigue las direcciones que aparecerán y reinicia cuando te lo pidan. Esta página puede no abrirse después de reiniciar, así que asegúrate de anotar la url o agregarla a los marcadores.

#### 2. Instala la aplicación de Ubuntu desde Windows Store.

1. Haz click para ir a la Microsoft store e instalar la [Aplicación de Ubuntu](https://www.microsoft.com/en-us/store/p/ubuntu/9nblggh4msv6?activetab=pivot%3aoverviewtab)
1. Sigue las instrucciones en la pantalla para instalar la aplicación. 
1. Cuando la aplicación esté lista, dirá Abrir. Haz click en Abrir. Esto comenzará la instalación de Ubuntu. Esta instalación solo ocurre la primera vez que se ejecuta la apliación, ya que el SO de Ubuntu se está instando y montando en tu Sistema de Archivos de Windows. Cada vez que desinstales la aplicación y la reinstales tendrás que hacer este proceso de nuevo. Asegúrate de hacer una copia de seguridad con tu información importante si llegas a desinstalar esta aplicación, ya que no se guardará. 

#### 3. Termina de instalar la aplicación de Ubuntu.

1. Te pedirá ingresar un nombre de usuario. Este será el usuario root / admin para el Sistema de Archivos de Ubuntu. 
1. Después te pedirá ingresar y confirmar una contraseña. Se recomienda que no sea muy larga, ya que tendrás que escribirla varias veces. También ten en cuenta que protegerá tu constraseña al no mostrarla en la pantalla mientras la escribes, pero está registrando las teclas que pulsas.
1. Por último, el aviso cambiará y estarás en la línea de comandos. Escribe `pwd` para ver en dónde estás dentro del Sistema de Archivos, deberás estar en `/home/<tu nombre de usuario>`. **Este es el directorio raiz de tu usuario de Ubuntu.**

#### 4. Actualizando el Software Predeterminado

1. Escribe `sudo apt-get update`.
1. Una vez que se haya completado, escribe `sudo apt-get upgrade`. Presiona `y` cuando te lo indiquen. 
1. Una vez que haya terminado, escribe `sudo apt autoremove`. Esto eliminará los paquetes que ya no se necesitan.

A este punto ya tienes WSL y la aplicación de Ubuntu completamente configurados.

- Abre la aplicación de Ubuntu y escribe `pwd`. Asumiendo que aún no has cambiado nada, notarás que dice algo como `/home/<tu nombre de usuario>`.

Este `/home/` significa que estás en el Sistema de Archivos de Ubuntu. 

### [⇐ Anterior](../README.md) | [Siguiente ⇒](./4_updating_terminal.md)
