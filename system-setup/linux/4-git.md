# Git

Git es un sistema de control de versiones gratis y distribuido como código abierto. ¡Lo utilizarás para monitorear el historial de cambios de tus archivos, colaborar con otras personas y más!

---

## Verifica si Git y GitHub ya están instalados:

**_Si esta es la primera vez que pasas por la guía de configuración en tu equipo actual, sáltate la sección "Verificar" y ve a la sección "Instalar" más abajo_**

En tu terminal, ejecuta:

- `git config --list`

> **SI** el output es similar a:
>
> ```bash
>   user.name=[Tu nombre va aquí]
>   user.email=[Tu correo va aquí]
>   code.editor=code --wait
>   init.defaultbranch=main
> ```
>
> Entonces sigue a la [siguiente página](./5-tree.md)
>
> ---
> **O si** el output no es similar a lo anterior:
>
> Continúa con las instrucciones en esta página.

**Nota**: Para salir de la pantalla `git config --list`, escribe la letra `q` en tu terminal

---

## Instala y Configura Git y GitHub

Escribe el siguiente comando para asegurarte de que tienes la versión más reciente de git:

- `brew install git || brew upgrade git`

## Configura GitHub para "Authentication"

Para utilizar Git localmente de forma segura, necesitamos conectar nuestra computadora con github.com. (_Para más información acerca de este proceso, visita las [Instrucciones de GitHub: Almacenar tus credenciales de GitHub](https://docs.github.com/es/get-started/getting-started-with-git/caching-your-github-credentials-in-git)_) 

Instala CLI completando los siguientes pasos:

- Ejecuta en tu terminal:
  - `brew install gh`
- Una vez que hayas terminado, ejecuta:
  - `gh auth login`
- Utiliza las teclas de flecha para seleccionar **GitHub.com**
- Selecciona **HTTPS**
- Cuando aparezca `Authenticate Git with your GitHub credentials (Y / n)`, presiona `y` y enter
- Selecciona **Login with a web browser**
- Copia el código que se muestra en tu terminal y presiona enter.  Esto abrirá GitHub.com en una nueva página.
- Si no has iniciado sesión, se te pedirá que lo hagas.
- GitHub te pedirá el código que copiaste del terminal.  Cópialo/ingrésalo en las casillas indicadas.
- Haz click en **Authorize GitHub**
- Puedes cerrar el navegador y presionar enter en tu terminal para continuar.

## Configuración de Git

Al igual que los artistas, los programadores firman su trabajo. Vamos a configurar Git para firmar tus commits con tu nombre y tu dirección de correo.

**ADVERTENCIA:**

Antes de ejecutar los siguientes comandos uno por uno, utiliza las teclas de flecha o retroceso/borrar en tu teclado para mover tu cursor.

Reemplaza `TU NOMBRE COMPLETO` y `TU CORREO ELECTRÓNICO` dentro de las comillas simples con el nombre y correo de [tu cuenta de GitHub](https://github.com/settings/profile)

- `git config --global user.name 'TU NOMBRE COMPLETO'`
- `git config --global user.email 'TU CORREO ELECTRÓNICO'`
- `git config --global core.editor "code --wait"`
- `git config --global init.defaultbranch main`

---

### [⇐ Anterior](./3-homebrew.md) | [Siguiente ⇒](./5-tree.md)
