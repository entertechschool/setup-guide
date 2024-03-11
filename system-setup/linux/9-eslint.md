# ESLint y Estructura de Carpetas

ESLint es una herramienta que te ayudará a encontrar y solucionar problemas con tu código en JavaScript. ¡Es como usar un corrector de ortografía o un corrector gramatical, pero para escribir JavaScript!

Esta página también te ayudará a configurar tu estructura de carpetas. ¿Dónde pondrás tus proyectos de programación? ¿Cómo te organizarás entre un curso y el siguiente? Vamos a comenzar.

---

## Verifica si ESLint ya está instalado

**_Si esta es la primera vez que pasas por la guía de configuración en tu equipo actual, sáltate la sección "Verificar" y ve a la sección "Instalar" más abajo_**

En tu terminal, ejecuta:

- `eslint --version`

> **SI** el output es esta versión o superior:
>
> ```text
> v8.1.0
> ```
>
> Continúa a la [siguiente página](./10-vscode.md)
>
> ---
> **O si** el output no es similar a lo anterior:
>
> Continúa con las instrucciones en esta página.

---

## Instala ESLint

En tu terminal, ejecuta el comando:

- `npm install -g eslint`

Obtendrás bastante feedback mientras se instala. Verifica que eslint esté instalado ejecutando el comando:

- `eslint --version`

El output esperado deberá ser esta versión o una superior:

> ```text
> v8.1.0
> ```

Si no... [dirígente aquí](../../error/error.md)

---

## Configurando tu Estructura de Carpetas

¿Puedes predicir lo que harán estos comandos?

Escribe cada uno de estos comandos, uno por uno, para crear una estructura de carpetas en donde almacenarás el código en tu computadora:

```bash
cd ~
mkdir projects
cd projects
mkdir courses
cd courses
pwd
```

Deberías ver un output similar a esto:

> ```bash
> /home/tu_nombre_de_usuario/projects/courses
> ```

El siguiente paso es crear otro nuevo directorio par tu curso actual, aquí dentro del directorio "courses".

Si estás en el curso 102, crea un directorio 102, si estás en el 201, crea un directorio 201, etc.

> ```bash
> # EJEMPLO
> mkdir code-102
> # O
> mkdir code-201
> # ETC ...
> ```

Ahí es donde clonarás repositorios y harás el trabajo de los laboratorios para este curso.

---

### [⇐ Anterior](./8-live-server.md) | | [Siguiente ⇒](./10-vscode.md)
