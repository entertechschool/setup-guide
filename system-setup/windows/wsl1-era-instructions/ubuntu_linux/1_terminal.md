# Configuración para Ubuntu

----------------

Esta guía te ayudará a configurar un entorno de desarrollo de software en <a href="http://releases.ubuntu.com" target="_blank">Ubuntu</a>. Al final, tu computadora estará configurada con las mismas herramientas más recientes utilizadas por los desarrolladores de software profesionales.

Esta guía es más compatible con versiones antiguas de Ubuntu. Así que síguela lo mejor que puedas mientras buscas en Google cualquier problema con el que te puedas encontrar.


### El Terminal

El **Terminal** está incluido en Ubuntu -- una aplicación que ejecuta un shell de Unix.

Un **shell de Unix** (al que se refiere a menudo como "terminal") es una interfaz de usuario de línea de comandos entre tú y el sistema operativo de tu computadora. 


### Explora el Terminal

Vamos a ponernos manos a la obra y a divertirnos. Primero, utiliza el Dash para ejecutar la aplicación del Terminal

![](https://i.imgur.com/qH7fROg.png)

Una vez que se ejecute, verás algo como esto.

![](https://i.imgur.com/DObOFyg.png)

### Cambia el Perfil del Terminal

El perfil por defecto del Terminal se ve bien, pero utiliza un texto pequeño y tiene un contraste de color bajo. Vamos a cambiar eso.

Primero, ejecuta el siguiente comando para actualizar el software de tu sistema operativo. Para ejecutar un comando, escríbelo en el Terminal y presiona "enter". Si quieres copiar y pegar comandos en tu terminal, tendrás que hacer click derecho en la ventana principal del Terminal y seleccionar "Pegar". O puedes presionar Control-Shift-V.

```
sudo apt-get update
```

**CONSEJO:** Esto necesitará de tu contraseña, la cual **no** aparecerá en la pantalla cuando escribas, pero registra las teclas que pulsas.

Luego ejecuta este comando para instalar un programa de línea de comandos bastante útil llamado `curl`, el cual utilizaremos en un momento.

```
sudo apt-get install -y curl
```

Luego descarga e instala el nuevo Perfil del Terminal.

```
curl -fsSL http://git.io/Ak1LNQ | sh
```


Luego navega hasta el elemento del menú `Editar > Perfiles` del Terminal.

![](https://i.imgur.com/urVA5BE.png)

En la ventana `Perfiles`, selecciona `Tomorrow` como el perfil a utilizar cuando se abra un nuevo terminal.

![](https://i.imgur.com/8oemVp3.png)

Por último, sal y vuelve a ejecutar el Terminal. Ahora, cada nueva ventana del terminal se verá así.

![](https://imgur.com/JCIdYi7.png)


### [⇐ Anterior](../README.md) | [Siguiente ⇒](2_apt.md)
