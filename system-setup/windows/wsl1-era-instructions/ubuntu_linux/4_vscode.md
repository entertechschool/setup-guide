## Instalar el Editor de Texto VSCode 

Ahora, es momento de instalar VSCode, un sofisticado editor de texto para código, marcado y prosa.

Para comenzar, descarga [VSCode](https://code.visualstudio.com/download), y una vez que esté instalado, ejecuta la aplicación.

La [documentación de VSCode](https://code.visualstudio.com/docs) es excelente. Revísalo ahora para familiarizarte con los conceptos básicos.

### Instala los comandos de shell

Abre la **Paleta de Comandos** (⇧⌘P) y escribe 'shell command'

Luego, haz click en el **Shell Command: Install 'code' command in PATH**

Reinica el terminal para que el nuevo valor $PATH haga efecto. 

### Asocia VSCode con Git

Ejecuta el siguiente comando en tu terminal:
`git config --global core.editor "code --wait"`

Este comando no te dará ningún mensaje a menos que haya un error.

### Instala Node

Para instalar Node, abre tu Terminal y copia y pega la siguiente línea, luego presiona Enter:

`sudo apt-get install nodejs`

Después, tendrás que instalar Node Package Manager (NPM).

`sudo apt-get install npm`

Si encuentras algún error tratando de instalar Node con estos pasos, por favor contacta a tu instructor.

Tomára unos minutos para que los procesos de descarga e instalación se completen.

### Instala ESLint

Ahora que tienes Node instalado, puedes instalar paquetes de Node utilizando su administrador de paquetes, **NPM**. Abre tu terminal e ingresa:

`npm -g i eslint git-open`

Obtendrás bastante feedback mientras se instala.

# Últimos Pasos

### Extensiones de VSCode

1. Para añadir extensiones a VSCode, abre VSCode. En la parte inferior izquierda verás el ícono de una tuerca.  Haz click ahí y selecciona extensiones. Se abrirá una barra lateral y en la parte superior podrás buscar extensiones que se enumeran a continuación y hacer click en el botón verde 'Instalar':

  - live server 5.6.1
  - ESLint 2.0.13
  - HTML Snippets 0.2.1
  - HTML Preview 0.2.5
  - Debugger for Chrome

### Verificación

#### Cuando hayas completado la guía, deberías poder ejecutar los siguientes comandos en tu terminal:

- code --version
- git --version
- node --version
- npm --version
- eslint --version
- tree --version
- echo $PS1
- cat ~/.gitconfig
- code
  - se debería abrir VSCode

#### Cada comando deberá informar un número de versión de lo que está instalado (se deberá ver *parecido* al siguiente ejemplo). En caso de que encuentres errores que te causen dificultad, por favor ponte en contacto más abajo:

``` 
username@user $ code --version
1.40.2
f359dd69833dd8800b54d458f6d37ab7c78df520
x64
username@user $ git --version
git version 2.2.0
username@user $ node --version
v10.16.0
username@user $ npm --version
6.9.0
username@user $ eslint --version
v6.7.2
username@user $ tree --version
tree v1.8.0 (c) 1996 - 2018 by Steve Baker, Thomas Moore, Francesc Rocher, Florian Sesser, Kyosuke Tokoro
username@user $ echo $PS1
\[\e[36m\]\A\[\e[m\] \[\e[32m\]\w\[\e[m\] \[\e[37;40m\]`parse_git_branch`\[\e[m\]
username@user $ cat ~/.gitconfig
[core]
	editor = code --wait
[user]
	name = yourgithubusername
	email = youremail
username@user $ code
//se debería abrir VSCode
```
---


## ¡FIN! 

### [⇐ Anterior](3_git.md) | [De vuelta al README ⇒](../../../../)
