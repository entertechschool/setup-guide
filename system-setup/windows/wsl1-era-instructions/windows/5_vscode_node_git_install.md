# Instalando VSCode, Node.js y Git

Después de finalizar de leer este documento, tendrás VSCode, Node.js y Git instalados en tu equipo.

## VSCode

1. Visita [VSCode](https://code.visualstudio.com/?wt.mc_id=adw-brand&gclid=Cj0KCQjw5-TXBRCHARIsANLixNw00R2vbdqnzLml-GvzCgbyqmgcAb9kyRQsC5LAPVS6tuBDZ9ws9pgaAsiLEALw_wcB) para descargarlo.
1. Ejecuta el instalador y sigue las indicaciones en la pantalla.
1. **Cuando llegues a la sección `Tareas adicionales`, asegúrate de que todas las casillas estén marcadas.**
1. Haz click en instalar y continúa siguiendo las indicaciones en la pantalla.

Una vez que hayas terminado, puedes abrir un terminal (la aplicación de Ubuntu) y escribir `code` para abrir VSCode. Eso puede o no puede requerir de un reinicio primero. 

## Node.js - Version 10.x

1. Abre la aplicación de Ubuntu y escribe `cd ~` para llevarte al Sistema de Archivos de Ubuntu.
1. Escribe `sudo apt-get update`. Esto le pedirá a la herramienta apt de Ubuntu que se actualice.
1. Una vez que se termine de actualizar ejecuta el comando:

```
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
```

y después ejecuta:

```
sudo apt-get install -y nodejs
```

También instalaremos Node en Windows:

1. Entra a <https://nodejs.org/en/download/> para descargar y ejecutar el instalador de Windows.

## Eslint

1. Busca 'windows powershell' en el menú de inicio y ábrelo.
2. Ejecuta `npm i -g eslint` . Una vez hayas terminado, cierra windows powershell.

## Git

Git ya está instalado en Ubuntu ya que viene incluido. Sin embargo, VSCode también utiliza Git para ejecutar su herramienta de control de versiones. Pero ya que VSCode es una aplicación de Windows, no sabe cómo utilizar la versión de Ubuntu de Git. 

1. Entra a [git-scm.com](https://git-scm.com/) para descargar e instalar Git.
2. Sigue las instrucciones en la pantalla.

    - Escoge los valores por defecto para cada indicación...
    - **EXCEPTO** cuando te pida `Choose the default editor used by Git`... 
        - Haz click en el menú desplegable y escoge la opción de VSCode
        - NO escojas la opción "VSCode Insiders". 
    - Esto te permitirá manejar los merge conflicts en tu editor en vez de la línea de comandos, lo cual es otra razón para tener Git en Windows también.

3. Continúa escogiendo las opciones por defecto para terminar con la instalación.

### Configura Git

El paso final es añadir tu correo electrónico y tu nombre a la configuración de Git. Esto te permitirá hacer commits y push a GitHub. Asegúrate de incluir el espacio después de `.email` y `.name`, y siempre recuerda cerrar tus comiilas ' ' y " ".

1. Cierra y vuelve a abrir un nuevo terminal de Ubuntu.
1. Escribe `git config --global user.email 'tu correo aquí con comillas simples'`.
1. Escribe `git config --global user.name 'Tu Nombre en Comillas Simples'`.
1. Escribe `git config --global core.editor 'code --wait'`.

### [⇐ Anterior](./4_updating_terminal.md) | [Siguiente ⇒](./6_final_steps.md)
