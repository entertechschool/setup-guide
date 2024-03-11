# Actualiza APT

Ahora que tu Terminal está configurado, es momento de actualizar el **Advanced Packaging Tool** de Ubuntu o <a href="https://help.ubuntu.com/lts/serverguide/apt-get.html" target="_blank">APT</a> para abreviar. Si nunca has escuchadao de un administrador de paquetes, imagina que es una App Store de programas **gratis** para la línea de comandos.

Para comenzar, ejecuta los siguientes comandos. Cada línea es su propio comando, así que copia, pega y ejecútalos uno por uno.

```
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update
```

**CONSEJO:** Esto necesitará de tu contraseña, la cual **no** aparecerá en la pantalla cuando escribas, pero registra las teclas que pulsas.

## Instala Tree view

Una vez que hayas terminado, podemos instalar un comando rápido llamado `tree`. ¡Lo que hace `tree` es mostrar todos tus directorios y archivos en una vista de árbol para que puedas ver con facilidad tu estructura de archivos actual!

Escribe `sudo apt install tree`. ¡Una vez que hayas terminado, puedes escribir `tree` para ver la vista de árbol del directorio en el que te encuentras! Puede que necesites cerrar y reiniciar tu terminar antes para que funcione.

### [⇐ Anterior](1_terminal.md) | [Siguiente ⇒](3_git.md)
