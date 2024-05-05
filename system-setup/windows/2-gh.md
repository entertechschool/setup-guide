# Herramienta de la Línea de Comandos de Git

Instala la herramienta de línea de comandos `gh` desde GitHub

---

1. Cierra cualquier ventana de **GitBash** que tengas abierta.
1. Entra la página de descargas de [GitHub CLI](https://cli.github.com/).
1. Haz click en el botón download.
1. Una vez que se descargue el instalador, abre el archivo y sigue las instrucciones en la pantalla.

## Configura GitHub para "Authentication"

Para utilizar Git localmente de forma segura, necesitamos conectar nuestra computadora con github.com. (_Para más información acerca de este proceso, visita las [Instrucciones de GitHub: Almacenar tus credenciales de GitHub](https://docs.github.com/es/get-started/getting-started-with-git/caching-your-github-credentials-in-git)_)

Abre la aplicación **GitBash**.

- Una vez esté abierta, ejecuta este comando:
  - `gh auth login`
- Utiliza las teclas de flecha para seleccionar **GitHub.com**
- Selecciona **SSH**
- Cuando aparezca `Generate a new SSH Key to add to your GitHub account (Y / n)`, presiona `y` y enter
- Cuando te pida ingresar una passphrase, puedes poner una nueva aquí y presionar enter para saltarte este paso.
  - Saltarte este paso te quitará el peso de volver a ingresar tu contraseña cada vez que utilices esta herramienta desde tu laptop.
  - También significa que cualquiera con acceso a tu laptop puede entrar a tu cuenta de github.
- Presiona "Enter" cuando se te indique para darle un título a tu SSH key.
- Cuando aparezca `Authenticate Git with your GitHub credentials (Y / n)`, presiona `y` y enter
- Selecciona **Login with a web browser**
- Copia el código que se muestra en tu terminal y presiona enter. - Esto abrirá GitHub.com en una nueva página.
- Si no has iniciado sesión, se te pedirá que lo hagas.
- GitHub te pedirá el código que copiaste del terminal. Cópialo/ingrésalo en las casillas indicadas.
- Haz click en **Authorize GitHub**
- Puedes cerrar el navegador y presionar enter en tu terminal para continuar.

Tu terminal confirmará que te has autentificado con éxito.

![GitHub Authentication](./gh-auth.png)

### [⇐ Anterior](./1-gitbash.md) | [Siguiente ⇒](./3-vscode.md)
