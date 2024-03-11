# Actualizando tu Terminal

En esta sección hablaremos sobre cómo actualizar el aspecto y el estilo del Terminal, así como editar archivos en Ubuntu mediante el editor de la línea de comandos, nano.

Al final, esto añadirá algo de color a tu línea de comandos, tu línea de comandos estará con el formato para desarrollo.

## Actualizando el archivo .profile

1. Abre la aplicación de Ubuntu y escribe `ls -a`. Verás un archivo .profile ahí.
 - **Si no**, entonces escribe `sudo touch .profile`.
2. Escribe `sudo nano .profile`. Esto abrirá el archivo en el editor de la línea de comandos, Nano.
3. Copia y pega este código en el editor debajo de cualquier texto ya escrito. **Esto puede ser complicado**
 - Solo puedes pegar con un solo click derecho:

```
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
export PS1="\[\e[m\]\[\e[36m\]\W\[\e[m\]\[\e[33m\]\`parse_git_branch\`\\$ "


# Todo antes de este punto se utiliza para cambiar cómo se ve tu terminal. Si quieres actualizar la apariencia de tu terminal, cambia lo anterior.


# Nada después de este punto va a cambiar la apariencia de tu terminal, si no que va a cambiar algunas cosas sobre su funcionamiento.

# Esto te permitirá abrir archivos html en Chrome con más facilidad, solo escribiendo "chrome nombre-del-archivo".
alias chrome="/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe"

# Esto te permitirá cambiar entre los directorios raiz de Ubuntu y Windows.

# wr evalúa la ruta absoluta del directorio raiz de tu usuario de Windows.
export wr=~/../../mnt/c/Users/WIN_USERNAME/

# Esto nos da una forma rápida de movernos directamente a la raíz de Windows
alias cdwr='cd "$wr"'

# Esto te llevará directamente a tu directorio de trabajo de Windows cuando abras un nuevo terminal.
cdwr

```

4. Después de copiar esto, tendrás que reemplazar `WIN_USERNAME` con tu **nombre de usuario de Windows**, justo después de `.../Users/`. IE: `/Users/MichaelLeonTreat/`.

    -NOTA: Si tu ruta o nombre de usuario tiene un espacio, puedes utilizar una barra inversa para incluir el espacio. IE: `/Users/Michael\ Treat/`.

Si no estás seguro de cuál es tu nombre de usuario de Windows, escribe 'símbolo del sistema' en el menú de inicio y ábrelo.

Escribe el siguiente comando `echo %username%` .  El resultado es tu nombre de usuario de Windows. Reemplaza `WIN_USERNAME` con esto.

Cierra el símbolo del sistema.

Una vez que termines con el editor nano, presiona `ctrl + x`.

Presiona `y` y el editor guardará tus cambios.

Presiona enter.

- Para navegar a la raíz de Ubuntu, escribe `cd ~` (Hay un espacio entre cd y ~)

Ahora escribe `pwd` . Deberías ver algo como `/home/nombre-de-usuario-de-ubuntu`

- Para navegar a la raíz de Windows, escribe `cdwr`

Ahora escribe `pwd` . Deberías ver algo como `/mnt/c/Users/nombre-de-usuario-de-windows`

**A partir de ahora, cada vez que cierres y vuelvas a abrir tu terminal de Ubuntu, comenzarás en tu raíz de Windows.  Aquí es donde trabajarás**

### Instala Tree view

Una vez que hayas terminado, podemos instalar un comando rápido llamado `tree`. ¡Lo que hace `tree` es mostrar todos tus directorios y archivos en una vista de árbol para que puedas ver con facilidad tu estructura de archivos actual!

Escribe `sudo apt install tree`. ¡Una vez que hayas terminado, puedes escribir `tree` para ver la vista de árbol del directorio en el que te encuentras! Puede que necesites cerrar y reiniciar tu terminar antes para que funcione.

### [⇐ Anterior](./2_WSL_Ubuntu_setup.md) | [Siguiente ⇒](./5_vscode_node_git_install.md)
