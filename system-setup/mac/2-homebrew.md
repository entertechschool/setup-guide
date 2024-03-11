# Homebrew

El Homebrew es una herramienta que simplifica la instalación de aplicaciones en tu equipo. Piensa que es como una app store para tu computadora.

---

## Verifica si Homebrew ya está instalado

**_Si esta es la primera vez que pasas por la guía de configuración en tu equipo actual, sáltate la sección "Verificar" y ve a la sección "Instalar" más abajo_**

En tu terminal, ejecuta:

- `brew --version`

> **SI** el output es similar a:
>
> ```text
> Homebrew 3.4.11
> ```
>
> Ejecuta el comando:
>>
> - `brew update`
>
> para obtener las actualizaciones más recientes, pasa a la [siguiente página](./3-git.md)
>
> ---
> **O si** el output no es similar a lo anterior:
>
> Continúa con las instrucciones en esta página.

---

## Instala Homebrew

En tu terminal, ejecuta el siguiente comando:

- `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Te aparecerán varios anuncios a lo largo del proceso.

Proporciona tu contraseña cuando se indique, acepta todo por defecto, escribe "Yes" si se indica. (**_Nota:_** _No tendrás ningún feedback visual en tu pantalla mientras escribres tu contraseña. Está protegiendo tu constraseña al no mostrar NADA en la pantalla, pero está registrando las teclas que pulsas._)

Es probable que te indique instalar las herramientas de línea de comandos XCode. Selecciona "Yes".

Una vez que la instalación principal termine (puede tomar hasta 30 minutos), **mira el output al final de tu terminal.** Puede que veas una flecha apuntando a las instrucciones **"Next steps:"**. Se deberán ver parecidos a la imagen a continuación.

![Homebrew No Next Steps example](../../images/homebrew-next-steps.png)

Ejecuta los comandos mostrados en tu terminal, uno por uno - no deberían producirse errores ni tampoco mensajes de éxito.

Una vez que ese paso se haya completado, **ejecuta**:

- `brew doctor`

> **SI** el output de respuesta es:
>
> ```text
> Your system is ready to brew
> ```
>
> **O** si el output de respuesta es:
>
> ```text
> Por favor ten en cuenta que estas advertencias se utilizan para ayudar a los mantenedores de Homebrew con la depuración si presentas un issue. Si todo para lo que utilizas Homebrew está funcionando bien: por favor no te preocupes o presentes un issue; solo ignora esto. ¡Gracias!
> ```
>
> **Luego**  ejecuta el comando:
>
> - `brew update`
>
> ---
> **O si** si el output de respuesta es:
>
> ```text
> brew: command not found
> ```
>
> **Entonces** ejecuta estos comandos
>
> - `` echo 'eval "$(`which brew` shellenv)"' >> $HOME/.zshrc ``
> - `` eval "$(`which brew` shellenv)" ``
> - `reset`
>
> y comienza la secuencia desde el paso `brew doctor` una vez más

**Si `brew doctor` se sigue sin ejecutar, [haz click aquí](../../error/error.md) y no continúes con los siguientes pasos hasta que tengas Homebrew debidamente instalado**

Cuando eso se complete, volverás al símbolo del sistema y podrás continuar con los siguientes pasos.

---

### [⇐ Anterior](./1-environment.md) | [Siguiente ⇒](./3-git.md)
