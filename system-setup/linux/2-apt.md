# APT

Para algunas cosas en el sistema, utilizaremos Advanced Package Tool, conocido como `apt`, para instalar aplicaciones. Lo primero que queremos hacer es actualizar con las últimas versiones e información.

---

## Instalando y Actualizando el Administrador de Aplicaciones de Linux (APT)

1. Ejecuta el comando:
   - `sudo apt-get update`
      - Proporciona tu contraseña cuando se indique (**_Nota:_** _No tendrás ningún feedback visual en tu pantalla mientras escribres. Está protegiendo tu constraseña al no mostrar NADA en la pantalla, pero está registrando las teclas que pulsas._)
1. Una vez que se haya completado, ejecuta:
   - `sudo apt-get upgrade`
      - Presiona `y` cuando te lo indiquen.
1. Una vez que se haya completado, ejecuta:
   - `sudo apt autoremove`
      - Esto eliminará los paquetes que ya no se necesitan.
1. Instala el kit "Build Essentials" con este comando:
   - `sudo apt-get install build-essential`

---

### [⇐ Anterior](./1-environment.md) | [Siguiente ⇒](./3-homebrew.md)
