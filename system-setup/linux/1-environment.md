# Respalda tu Terminal/Entorno de Shell

## Respaldando archivos

Lo primero que haremos será respaldar tu configuración actual del terminal.

Hay varias formas en las que puedes configurar tu terminal, determinado por diferentes archivos de configuración.

Queremos dejar atrás lo antiguo para comenzar en una hoja en blanco.

Haz respaldos de los archivos enlistados a continuación. Puede que obtengas algunos errores como `No existe tal archivo o directorio`. Está bien.

Ejecuta estos comandos:

- `mv ~/.bashrc .bashrc.bak`
- `mv ~/.bash_profile .bash_profile.bak`
- `mv ~/.profile .profile.bak`
- `mv ~/.zprofile .zprofile.bak`
- `mv ~/.zshrc .zshrc.bak`

## Instala Z Shell

Ejecuta el siguiente comando:

- `sudo apt-get install zsh`

Después de instalarlo, ejecuta el comando:

- `zsh`

Zsh te pedirá escoger una configuración. Haremos esto después, instalando `oh-my-zsh`. Escoge la opcion 0 para crear el archivo de configuración (previene que este mensaje aparezca de nuevo).

Ahora, vamos a instalar nuestras aplicaciones de desarrollo.

---

### [⇐ Anterior](./README.md) | [Siguiente ⇒](./2-apt.md)
