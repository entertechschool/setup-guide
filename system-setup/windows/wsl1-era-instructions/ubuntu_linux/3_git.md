# Instala Git

Utilizando APT, también puedes instalar <a href="http://git-scm.com/" target="_blank">Git</a>, el sistema de control de versiones preferido por los desarrolladores más exigentes.

Para comenzar, ejecuta el siguiente comando.

```
sudo apt-get install -y git
```

## Configuración de Git

Al igual que los artistas, los programadores firman su trabajo. Vamos a configurar Git para firmar tus commits con tu nombre y tu dirección de correo.

Asegúrate de registrarte para obtener una cuenta de Github <a href="https://github.com" target="_blank">aquí</a>.

**ADVERTENCIA:** Antes de ejecutar los siguientes comandos uno por uno, reemplaza `TU NOMBRE COMPLETO` y `TU CORREO ELECTRÓNICO` con el nombre y correo de <a href="https://github.com/settings/profile" target="_blank">tu cuenta de GitHub</a>.

```
git config --global user.name 'TU NOMBRE COMPLETO'
```

```
git config --global user.email 'TU CORREO ELECTRÓNICO'
```

```
git config --global core.editor nano
```

## Configuración de la línea de comandos de Git

Para comenzar, ejecuta el siguiente comando.

```
nano ~/.bash_profile
```

Esto abrirá el archivo en el editor de la línea de comandos, Nano

Copia y pega este código en el editor **debajo de cualquier texto ya escrito.**

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

# El PS1 es lo que define cómo se ve tu línea de comandos.
export PS1="\[\e[31m\]\u\[\e[m\]\[\e[35m\]\w\[\e[m\]\[\e[33m\]\`parse_git_branch\`\[\e[m\]\[\e[32m\]\\$\[\e[m\] "
```

Presiona `control X` para salir

Escribe `y` para verificar los cambios

Presiona `enter` para salir de Nano

Ahora cierra el terminal y abre una ventana nueva para que los cambios hagan efecto.
Ahora tendrás un nuevo terminal con funcionalidades adicionales de Git y codificadas por colores.
No te preocupes acerca de lo que esto significa por ahora. Pronto entenderás su valor si aún no lo has hecho.

### [⇐ Anterior](2_apt.md) | [Siguiente ⇒](4_vscode.md)
