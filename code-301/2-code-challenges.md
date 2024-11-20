# Configuración de Code 301

## Estructuras de Datos y Algoritmos

Como parte de tu rutina en Code 301, realizarás retos de código **"code challenge"**. Para hacerlo correctamente se necesita un repositorio específico, configurado correctamente. En este repositorio, completarás tu trabajo diario.

Sigue estos pasos:

1. [Haz click aquí](https://github.com/entertechschool/code-challenges/generate){:target="_blank"} para crear un nuevo repositorio, basado en la plantilla oficial de Enter Tech School
   - Nombra este repositorio exactamente como: `code-challenges`.
   - La descripción deberá ser "Retos de Estructuras de Datos y Algoritmos".
   - **No marques la casilla que dice** "Include All Branches".
1. Clona el repositorio recién creado en tu equipo, en tu carpeta de proyectos.

>
> 💡 Tip: Recomendamos que en tu computadora, tengas un ruta como esta para almacenar tus repositorios:
> `~/dev/[usuario_github]/[repositorio]`
>
> Por ejemplo, en el caso de que tu usuario de github fuera **joseperez**, este repositorio estaría clonado en:
> ➡️ `~/dev/joseperez/code-challenges`

1. Haz `cd` en el nuevo repositorio en tu terminal.
1. Escribe estos comandos, en orden
   - `cd 301` - para entrar en la carpeta 301.
   - `npm install` - el cual instalará algunas librerías que utilizaremos para ayudarte a testear tus code challenges.
   - `npm test` - el cual realizará un test.
   - Deberás ver un mensaje como el siguiente, que indica que las cosas están configuradas correctamente y que los tests se están superando:

   ```bash
    PASS  ./proof-of-life.test.js
     proof of life
      ✓ lives (2 ms)

    ----------|---------|----------|---------|---------|-------------------
    File      | % Stmts | % Branch | % Funcs | % Lines | Uncovered Line #s
    ----------|---------|----------|---------|---------|-------------------
    All files |       0 |        0 |       0 |       0 |
    ----------|---------|----------|---------|---------|-------------------
    Test Suites: 1 passed, 1 total
    Tests:       1 passed, 1 total
    Snapshots:   0 total
    Time:        0.892 s
   ```

1. Completa un "ACP"
   - `git add -f package-lock.json`
       - El indicador `-f` es un paso de configuración único para este archivo.
   - `git commit -m "Inicio de mis Code Challenges del 301"`
   - `git push origin main`
1. Regresa a GitHub y actualiza la vista de tu repositorio `code-challenges`, donde deberás ver tu primer commit
1. Ve a la pestaña "Actions"
1. Deberás ver una marca de verificación verde en tu commit más reciente, lo que indica que tus tests se están superando igual que cuando las ejecutaste desde el terminal

Una vez que se complete este proceso, tendrás una estructura de carpetas recién configurada en tu sistema y sincronizada con GitHub.

> ¿Qué son esos tests? Abarcaremos esto en la clase, así como el uso de este repositorio constantemente. En este punto, nuestro objetivo es demostrar que todo está configurado correctamente.

---

### [⇐ Anterior](./1-database) | [Siguiente ⇒](./3-eslint-config)
