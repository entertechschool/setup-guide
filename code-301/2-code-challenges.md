# Configuración de Code 301

## Estructuras de Datos y Algoritmos

Como parte de tu rutina diaria en Code 301, realizarás un desafío de código. Para hacerlo correctamente se necesita un repositorio específico, configurado correctamente. En este repositorio, completarás tu trabajo diario.

Sigue estos pasos:

1. [Haz click aquí](https://github.com/entertechschool/data-structures-and-algorithms/generate){:target="_blank"} para crear un nuevo repositorio, basado en la plantilla oficial de DS&A.
   - Nombra este repositorio exactamente como: `data-structures-and-algorithms`.
   - La descripción deberá ser "Practica con Estructuras de Datos y Algoritmos".
   - **No marques la casilla que dice** "Include All Branches".
1. Clona el repositorio recién creado en tu equipo, en tu carpeta de proyectos.
1. haz `cd` en el nuevo repositorio en tu terminal.
1. Escribe estos comandos, en orden
   - `cd javascript` - para entrar en la carpeta javascript.
   - `npm install` - el cual instalará algunas librerías que utilizaremos para ayudarte a testear tus desafíos de código.
   - `npm test` - el cual hará una prueba.
   - Deberás ver un mensaje como el siguiente, que indica que las cosas están configuradas correctamente y que los tests se están superando:

   ```bash
    PASS  code-challenges/proof-of-life.test.js
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
   - `git commit -m "Initialized JavaScript Challenges"`
   - `git push origin main`
1. Regresa a GitHub y actualiza la vista de tu repositorio `data-structures-and-algorithms`, donde deberás ver a lo que hiciste push
1. Ve a la pestaña "Actions"
1. Deberás ver una marca de verificación verde en tu commit más reciente, lo que indica que tus tests se están superando igual que cuando las ejecutaste desde el terminal

Una vez que se complete este proceso, tendrás una estructura de carpetas "DS&A" recién configurada en tu sistema y sincronizada con GitHub.

> ¿Qué son esos tests? Abarcaremos eso en la clase, así como el uso de este repositorio a diario. En este punto, nuestro objetivo es demostrar que todo está configurado correctamente.

---

### [⇐ Anterior](./1-database) | [Siguiente ⇒](./3-eslint-config)
