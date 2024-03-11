# Verifica tu Configuración Parte 1

> Cuando hayas completado la guía, deberás poder ejecutar los siguientes comandos en tu terminal y ver el output esperado. Tus versiones podrán ser un poco superiores a lo que está listado aquí debido a las actualizaciones recientes.

Ejecuta estos comandos y compáralos con el output esperado.

- `code --version`
  - Output esperado: `1.64.2`
- `git --version`
  - Output esperado: `git version 2.34.1`
- `node --version`
  - Output esperado: `v17.8.0`
- `npm --version`
  - Output esperado: `8.3.0`
- `eslint --version`
  - Output esperado: `v8.1.0`
- `tree --version`
  - Output esperado: `tree v2.0.1 (c) 1996 - 2018 ...`
- `git config --list`
  - Deberá contener por lo menos lo siguiente:
  - `user.name=TU NOMBRE`
  - `user.email=TU CORREO`
  - `core.editor=code --wait`
  - `init.defaultbranch=main`
  - (Escribe la letra `q` para salir de la pantalla de configuración y volver a la pantalla anterior.)
- `code .`
  - Deberá abrir VS Code con el contenido de tu carpeta actual

Si alguno de los comandos anteriores no te dio el output esperado, obtén [ayuda](../../error/error.md).

---

## Verifica tu Configuración Parte 2

Ejecuta el siguiente comando

```bash
curl -Ls https://bit.ly/3qMWhbE | bash
```

Deberías obtener un mensaje de éxito. Si en vez de eso ver `Something went wrong!`, mira el output con cuidado, y vuelve a intentar los pasos en la parte 1 para comenzar a solucionar los problemas. Obtén [ayuda](../../error/error.md) de ser necesario.

---

### ¡Esto es todo! [De vuelva al inicio](../../README.md)
