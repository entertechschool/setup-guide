# Configurando WSL versión 2 y la aplicación de Ubuntu

## Resumen

Windows ha lanzado una funcionalidad disponible para todas las PCs con Windows 11 llamada Windows Subsystem for Linux, también conocido como WSL. WSL te da la capacidad de añadir una distribución de Linux (también llamada "distro") como Ubuntu y conectarla directamente al Sistema de Archivos de Windows.

Esta guía te mostrará cómo configurar Ubuntu en tu PC y utilizarlo para el desarrollo de software.

## Instrucciones de Instalación

Por favor lee cada uno de estos pasos antes de comenzar

### Instala la versión más reciente de Windows 11

Para configurar un entorno de desarrollo moderno en Windows 11, necesitamos que estés ejecutando la versión más reciente y tengas WSL Versión 2 instalado.

### Activa la Funcionalidad WSL en Windows.

> **NOTA**: Las siguientes instrucciones son un resumen de la [Documentación de Instalación de Microsoft WSL2](https://docs.microsoft.com/es-es/windows/wsl/install){:target="_blank"}

1. Abre Powershell en tu computadora con acceso administrativo (haz click derecho en powershell y en ejecutar como administrador).
2. Ejecuta los siguientes comandos:

   ```bash
   wsl --install
   wsl --update
   ```

3. Puede que se te indique reiniciar tu equipo.

#### Verifica que estás ejecutando WSL Versión 2

1. Abre Powershell
1. Ejecuta el siguiente comando:

   - `wsl -l -v`
   - Deberías ver un informe como este, el cual deberá confirmar tu versión de WSL

     ```bash
     PS C:\Users\tunombre> wsl -l -v
     NAME                   STATE           VERSION
     Ubuntu-20.04           Running         2
     ```

### Abre la Aplicación de Ubuntu

Esta se encontrará en tu menú de inicio. Es una buena idea "hacerle click derecho" a su ícono de la barra de tareas y "anclarlo" para acceder a él con facilidad en el futuro.

> **CONSEJO:** A partir de ahora al referirnos "Terminal" en esta guía, deberás abrir la aplicación del Terminal de Ubuntu.

### 4. Continúa con esta guía de configuración

Una vez que tu sistema está configurado como se indicó, estás listo para completar el proceso de instalación de software necesario.

---

### [⇐ Anterior](../../README.md) | [Siguiente ⇒](./README.md)
