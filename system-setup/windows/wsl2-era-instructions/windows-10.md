# Configurando WSL versión 2 y la aplicación de Ubuntu

## Resumen

Windows ha lanzado una funcionalidad disponible para todas las PCs con Windows 10 llamada Windows Subsystem for Linux, también conocido como WSL. WSL te da la capacidad de añadir una distribución de Linux (también llamada "distro") como Ubuntu y conectarla directamente al Sistema de Archivos de Windows.

Esta guía te mostrará cómo configurar Ubuntu en tu PC y utilizarlo para el desarrollo de software.

## Instrucciones de Instalación

Por favor lee cada uno de estos pasos antes de comenzar

**Sigue las instrucciones una por una, ¡presta atención a los detalles!**

### Instala la versión más reciente de Windows 10

Para configurar un entorno de desarrollo moderno, necesitamos que estés ejecutando la versión más reciente de Windows 10 y tengas WSL Versión 2 instalado.

> **NOTA:** WSL 2 solo está disponible en Windows 10 o superior, Version 2004, Build 19041 o superior. Puede que necesites actualizar tu versión de Windows.

Revisa tu versión de windows en configuración antes de continuar. Haz click en la barra de búsqueda de Windows, escribe "version" y presiona enter. Verás una ventana de Información del Sistema que te informará acerca de tu computadora y tu SO. Confirma que estás ejecutando la versión 2004 o superior.

![Check the Build of your OS](https://p57.p1.n0.cdn.getcloudapp.com/items/4gujyKoO/Image%202020-06-15%20at%204.13.25%20PM.png?v=5b8a750ada301268081beb4e33d37077)

Si tu versión no es un build superior a 19041, necesitarás actualizar Windows.  [Abre esta página](https://www.microsoft.com/es-es/software-download/windows10), y haz click en el botón que dice "Descargar ahora la herramienta". Ejecútala y permite que actualice tu SO actual. Puede que esto tarde un poco.

### Activa la Funcionalidad WSL en Windows.

> **NOTA**: Las siguientes instrucciones son un resumen de la [Documentación de Actualización de Microsoft WSL2](https://docs.microsoft.com/es-es/windows/wsl/install-win10#update-to-wsl-2)

1. En la barra de búsqueda al lado del Menú de Windows, escribe `Activar o desactivar las características de Windows` y presiona enter.
1. Aparecerá una ventana con una lista de carpetas con casillas al lado.
   - Baja y selecciona las casillas de:
     - `Platforma de máquina virtual`
     - `Platforma del hipervisor de Windows`
     - `Subsistema de Windows para Linux`
   - Si estás ejecutando Windows como una Máquina Virtual (poco probable), también activa:
     - `Contenedores`
     - `Hyper-V (y todos los subelementos que puedas activar)`
1. Una vez que esta operación termine, necesitarás reiniciar tu sistema y luego continuar con los siguientes pasos.
   - NOTA: Esta página puede no abrirse después de reiniciar, así que asegúrate de anotar la url o agregarla a los marcadores.

### Configura WSL 2

Abre Powershell en tu computadora con acceso administrativo (haz click derecho en powershell y en ejecutar como administrador).

Ingresa los siguientes comandos para configurar el sistema por defecto para WSL 2:

- `wsl --set-default-version 2`

Lee CUIDADOSAMENTE el output que recibes después de ejecutar ese comando. Haz click en el output que obtuviste en tu sistema:

<details>
  <summary>
     <code>
        WSL 2 requires an update to its kernel component. For information please visit https://aka.ms/wsl2kernel
     </code>
  </summary>

Deberás actualizar WSL un poco más. [Abre esta página](https://aka.ms/wsl2kernel), y sigue las instrucciones. Cuando finalices con esas instrucciones, intenta ejecutar el comando anterior de nuevo.

</details>

<details>
   <summary>
      <code>
         For information on key differences with WSL 2 please visit https://aka.ms/wsl2
      </code>
   </summary>

Tu sistema está configurado, continúa con las siguientes instrucciones.

</details>

Ejecuta el siguiente comando en Powershell:

- `wsl --update`

### Instala la aplicación de Ubuntu desde Windows Store.

1. Abre la Microsoft Store e instala la aplicación "Ubuntu 20.04" Si no lo puedes encontrar, [míralo en línea](https://apps.microsoft.com/store/detail/ubuntu-20045-lts/9MTTCL66CPXJ?hl=en-us&gl=us).
1. Cuando la aplicación esté lista, te dirá **Abrir**. Haz click en el botón de Abrir. Esto comenzará la instalación de Ubuntu. Esta instalación solo ocurre la primera vez que se ejecuta la apliación, ya que el SO de Ubuntu se está instando y montando en tu Sistema de Archivos de Windows. Cada vez que desinstales la aplicación y la reinstales tendrás que hacer este proceso de nuevo. Asegúrate de hacer una copia de seguridad con tu información importante si llegas a desinstalar esta aplicación, ya que no se guardará.

NOTA: Si la instalación anterior falla:

1. Entra [aquí](https://docs.microsoft.com/es-es/windows/wsl/install-manual).
1. Selecciona la versión: "Ubuntu 20.04", y se descargará un archivo `.appx`.
1. Ejecuta este archivo, y hará lo mismo que "obtenerlo" desde la Windows Store.

NOTA: Si ninguna de las formas anteriores funciona, haz esto:

1. Haz click [aquí](https://docs.microsoft.com/es-es/windows/wsl/install-manual).
1. Selecciona la versión: "Ubuntu 20.04", y se descargará un archivo `.appx`.
1. Ejecuta este archivo, y hará lo mismo que "obtenerlo" desde la Windows Store.

#### Termina de instalar la aplicación de Ubuntu

1. Te pedirá ingresar un nombre de usuario.
1. Después te pedirá ingresar y confirmar una contraseña.
   - Se recomienda que no sea muy larga, ya que tendrás que escribirla varias veces.
   - También ten en cuenta que protegerá tu constraseña al no mostrar NADA en la pantalla, pero está registrando las teclas que pulsas.
1. Por último, el aviso cambiará y estarás en la línea de comandos.
1. Escribe `pwd` para ver en dónde estás dentro del Sistema de Archivos. Deberás estar en `/home/<tu nombre de usuario>`. **Este es el directorio raiz de tu usuario de Ubuntu.**
   1. Si el output de `pwd` no es `/home/<tu nombre de usuario>`, ejecuta el comando `cd ~` y revisa de nuevo.
   1. Si no te encuentras en `/home/<tu nombre de usuario>`, obtén ayuda.

#### Verifica que estás ejecutando WSL Versión 2

1. Abre el Símbolo del sistema desde la barra de búsqueda de Windows.
1. Ejecuta el siguiente comando:

   - `wsl -l -v`
   - Deberías ver un informe como este, el cual deberá confirmar tu versión de WSL (NOTA: El NOMBRE puede cambiar un poco)

     ```bash
     PS C:\Users\<tunombre> wsl -l -v
     NAME                   STATE           VERSION
     Ubuntu-20.04           Running         2
     ```

1. Si en tu versión dice version 1, deberás realizar un paso adicional para actualizar Ubuntu:
   - Ingresa el siguiente comando (NOTA: reemplaza Ubuntu-20.04 con la versión que instalaste):
   - `wsl --set-version Ubuntu-20.04 2`
   - Esto tomará algo de tiempo en completarse
   - Vuelve a ejecutar el comando anterior para verificar tu versión

Nota: Si tienes problemas para que Ubuntu-20.04 se actualice a la versión 2, sigue las [Instrucciones del Manual de Instlación](https://docs.microsoft.com/es-es/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package) de Microsoft.

> **CONSEJO:** A partir de ahora al referirnos "Terminal" en esta guía, deberás abrir la aplicación del Terminal de Ubuntu.

### 4. Continúa con esta guía de configuración

Una vez que tu sistema está configurado como se indicó, estás listo para completar el proceso de instalación de software necesario.

---

### [⇐ Anterior](../../README.md) | [Siguiente ⇒](./README.md)
