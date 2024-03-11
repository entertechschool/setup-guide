# Configuración de Git

## Asegúrate de tener tu nombre de usuario y contraseña de GitHub

<img src="../images/github-example.png" width="500" height="500">

**Ejectua** los tres `comandos` a continuación...  **uno por uno.**

NOTA: Utiliza las comillas simples como se indica.

```
> git config --global user.name 'REEMPLAZA CON TU NOMBRE DE USUARIO DE GITHUB'
```
```
git config --global user.email 'REEMPLAZA CON TU CORREO'
```
```
git config --global core.editor 'code --wait'
```
---
**Ahora ejecuta:**

`cat ~/.gitconfig`

Output esperado:

```
[core]
	editor = code --wait
[user]
	name = tuNombreDeUsuario
	email = tuEmail@gmail.com
```

---

¿Obtuviste el output esperado?

[Sí](../vs-code/extensions.md)

[No](../../error/error.md)

---
### [⇐ Anterior](../git/install-git.md)