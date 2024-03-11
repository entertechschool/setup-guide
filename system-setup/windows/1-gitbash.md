# Git

Git es un sistema de control de versiones gratis y distribuido como código abierto. ¡Lo utilizarás para monitorear el historial de cambios de tus archivos, colaborar con otras personas y más!

---

## Verifica si GitBash ya está instalado:

Busca y abre la aplicación llamada `git bash` en tu computadora. Si esta aplicación ya está instalada, entonces salta al [siguiente paso](./2-gh.md)

## Descarga GitBash

1. Entra la página de descargas de [Git](https://git-scm.com/downloads).
1. Haz click en el botón download.
1. Una vez que se descargue el instalador, abre el archivo y comienza con el proceso de instalación.

## Instala GitBash

Una vez que comience la instalación, se te aparecerán una serie de ventanas que te pedirán que elijas algunas cosas dentro de la configuración, luego presiona el botón "Next" para continuar con el proceso. Utiliza estas notas como guía:

1. **Select Components**: Selecciona todas las opciones.
2. **Choose Default Editor**: Selecciona Notepad.
3. **Initial Branch**: Escoge la opción "Override" y deja `main` por defecto.
4. **Path**: Escoge "Git from the command line and also from 3rd party software".
5. **OpenSSH**: Elige "Use bundled OpenSSH".
6. **OpenSSL**: Elige "Use the OpenSSL Library".
7. **Line Ending Conversions**: Elige "Checkout Windows-style, commit Unix-style".
8. **Terminal Emulator**: Elige "Use Windows Terminal".
9. **Default Behavior for 'git pull'**: Elige "Fast Forward or Merge".
10. **Credentials Manager**: Elige "git credential manager".
11. **Extra Options**: Elige solo "Enable filesystem caching".
12. **Experimental Options**: No marques ninguna de las opciones.

Cuando se termine la instalación, marca la opción "Launch GitBash" y haz click en el botón "Finish".

GitBash debería aparecer en una nueva ventana que se ve como la imagen a continuación.

> Recomendamos que le des click derecho al ícono de GitBash o Terminal en tu barra de tareas y escojas la opción "Anclar a la barra de tareas" para que te sea fácil volver a abrir GitBash en el futuro.

![GitBash](./gb-base.png)

Al igual que los artistas, los programadores firman su trabajo. Vamos a configurar Git para firmar tus commits con tu nombre y tu dirección de correo.

**ADVERTENCIA:**

Antes de ejecutar los siguientes comandos uno por uno, utiliza las teclas de flecha o retroceso/borrar en tu teclado para mover tu cursor.

Reemplaza `TU NOMBRE COMPLETO` y `TU CORREO ELECTRÓNICO` dentro de las comillas simples con el nombre y correo de [tu cuenta de GitHub](https://github.com/settings/profile)

- `git config --global user.name 'TU NOMBRE COMPLETO'`
- `git config --global user.email 'TU CORREO ELECTRÓNICO'`
- `git config --global core.editor "code --wait"`
- `git config --global init.defaultbranch main`

### [⇐ Anterior](./README.md) | [Siguiente ⇒](./2-gh.md)
