# Pruebas y Configuración Rápida para Usuarios de Mac

Esta guía proporcionará un punto de partida para ayudar a los instructores a identificar erroes o los siguientes pasos en el proceso de configuración.  Esto ayudará a eliminar el inconveniente de buscar el problema al definir un procedimiento paso por paso que puede ser probado en la consola.

La guía de configuración lleva a los estudiantes por los siguientes procesos:

1. Terminal /Línea de Comandos
2. Homebrew
3. Tree
4. VS Code / Code
5. Nodejs / NPM
6. ESLint / Live Server
7. Git
8. Configuración de Git
9. Extensiones de VSCode

**Ejecuta** este comando en el terminal del estudiante para revisar su progreso:

`verify`

**Si** obtienes:

```
zsh: command not found: verify
```

Comienza [AQUÍ](../mac/terminal/zsh.md)

---

**O si** obtienes:

```
bash: command not found: verify
```

Comienza [AQUÍ](../mac/git/git-prompt.md)

---

**Output esperado**

```
PROMPT ➠ ✓ Prompt is Ready yourMacUserName
\[\e[31m\]\u\[\e[m\]\[\e[35m\]\w\[\e[m\]\[\e[33m\]`parse_git_branch`\[\e[m\]\[\e[32m\]\$\[\e[m\] 

HOMEBREW ➠  /usr/local/bin/brew

TREE ➠  tree v1.8.0 (c) 1996 - 2018 by Steve Baker, Thomas Moore, Francesc Rocher, Florian Sesser, Kyosuke Tokoro 

CODE ➠  1.43.1
fe22a9645b44368865c0ba92e2fb881ff1afce94
x64

NODE ➠  v10.16.0

NPM ➠  6.9.0

ESLINT ➠  v6.7.2

LIVE SERVER ➠  live-server 1.2.1

GIT ➠  git version 2.22.0

 ▼ GITCONFIG ▼ 

[core]
	editor = code --wait
[user]
	name = githubUserName
	email = yourEmail@gmail.com

VSCODE EXTENSIONS:

DavidAnson.vscode-markdownlint
dbaeumer.vscode-eslint
george-alisson.html-preview-vscode
hdg.live-html-previewer
msjsdiag.debugger-for-chrome
ritwickdey.LiveServer
tht13.html-preview-vscode
yzhang.markdown-all-in-one
```
