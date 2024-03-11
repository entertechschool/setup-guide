## Línea de Comandos

Los alumnos comenzarán configurando la línea de comandos y el perfil de bash.

## Terminal

abre el terminal
Preferencias > General > bin/bash > por defecto
ajustes > Pro > por defecto
> ciérralo y reinicia

## Homebrew
¿cuál brew? 

 > ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)"

 > brew update
 > brew doctor

## Tree
 > brew install tree. 

## Vs code 
https://code.visualstudio.com/download

Descarga el archivo .zip.
Haz doble click al archivo .zip (o haz click en el archivo descargado en la parte inferior de Chrome) para extraer la nueva aplicación de VS Code.
Arrastra la aplicación de VS Code a tu carpeta de Aplicaciones.
Abre la aplicación. (Si abriste la aplicación antes de que estuviera en tu carpeta de Aplicaciones, tendrás que reinstalarla.)

### Configuración 
Abre VSCode > Paleta de Comandos (⇧⌘P) > ‘shell command’ > Haz click en el Comando de Shell: Instala el comando  ‘code’  en PATH. > Reincia 

## Node y NPM
 > brew install node  > sudo ¿quizás?

## ESLint y Live Server
 > npm -g i eslint git-open live-server

## Git
menú de apple > acerca de > versión para ver el build

Si estás ejecutando:

10.6 Snow Leopard / .7 Lion / .8 Mountain Lion : 
 > http://sourceforge.net/projects/git-osx-installer/files/git-2.3.5-intel-universal-snow-leopard.dmg/download

10.9 Mavericks: 
 > http://sourceforge.net/projects/git-osx-installer/files/git-2.5.3-intel-universal-mavericks.dmg/download

10.10 Yosemite o superior:
 > brew install git.

### Configuración de Git
 > git config --global user.name 'TU nombre de usuario de Github'
 > git config --global user.email 'TU CORREO en github'

 > git config --global core.editor 'code --wait'

 > git config --global credential.helper store

## Línea de Comandos
 > nano ~/.bash_profile

>>>>>>> Copia >>>>>>>

```
#!/usr/bin/env bash

# obtén la rama actual del repositorio en git
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# obtén el estado actual del repositorio en git
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

export PS1="\[\e[31m\]\u\[\e[m\]\[\e[35m\]\w\[\e[m\]\[\e[33m\]\`parse_git_branch\`\[\e[m\]\[\e[32m\]\\$\[\e[m\] "

export BASH_SILENCE_DEPRECATION_WARNING=1

echo "`echo -e '\xE2\x9C\x93'` Prompt is Ready `whoami`"

echo "Time to become a bad-ass developer! Self-defeat is not an option. Small wins, everyday!"

alias profile="nano ~/.bash_profile"

prompt(){
  echo "`echo -e '\xE2\x9C\x93'` Prompt is Ready `whoami`"
}

verify(){
  echo ""
  echo "PROMPT ➠ `prompt`"
  echo "$PS1"
  echo ""
  echo "HOMEBREW ➠  `which brew`"
  echo ""
  echo "TREE ➠  `tree --version`"
  echo ""
  echo "CODE ➠  `code --version`"
  echo ""
  echo "NODE ➠  `node --version`"
  echo ""
  echo "NPM ➠  `npm --version`"
  echo ""
  echo "ESLINT ➠  `eslint --version`"
  echo ""
  echo "LIVE SERVER ➠  `live-server --version`"
  echo ""
  echo "GIT ➠  `git --version`"
  echo ""
  echo " ▼ GITCONFIG ▼ "
  echo ""
  echo "`cat ~/.gitconfig`"
  echo ""
  echo "VSCODE EXTENSIONS:"
  echo ""
  echo "`code --list-extensions`"
}
```
>>>>>>>>>>>>>>>>>>>>

Control X > y > presiona enter > reiniciar terminal

 ## Extensiones

 > mkdir codefellows
 > cd codefellows
 > mkdir projects
 > cd projects
 > code .


live server 5.6.1
ESLint 2.0.13
HTML Snippets 0.2.1
HTML Preview 0.2.5
Debugger for Chrome

cierra vs code



alias profile="nano ~/.bash_profile"

run verify

verify(){
  echo ""
  echo "HOMEBREW ➠  `which brew`"
  echo ""
  echo "TREE ➠  `tree --version`"
  echo ""
  echo "CODE ➠  `code --version`"
  echo ""
  echo "NODE ➠  `node --version`"
  echo ""
  echo "NPM ➠  `npm --version`"
  echo ""
  echo "ESLint ➠  `eslint --version`"
  echo ""
  echo "Live Server ➠  `live-server --version`"
  echo ""
  echo "GIT ➠  `git --version`"
  echo ""
  echo " ▼ GITCONFIG ▼ "
  echo ""
  echo "`cat ~/.gitconfig`"
  echo ""
  echo "PROMPT ➠  `echo $PS1`"
  echo ""
  echo "VSCode Extensions:"
  echo ""
  echo "`code --list-extensions`"
}
```