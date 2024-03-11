# Oh My Zsh

¡Ahora es momento de desatar el potencial de tu terminal! En esta sección actualizaremos el aspecto y el estilo del Terminal, así como añadiremos algo de color.

---

Las siguientes instrucciones fueron extraídas de [Oh My Zsh.](https://ohmyz.sh/)

En tu terminal, ejecuta el comando para instalar Oh My Zsh:

- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

<details>
  <summary>Haz click <strong>AQUÍ</strong> solo si vez un mensaje similar al de esta imagen: 
  </summary>

  ¡Felicidades! Si ves este mensaje en tu terminal significa que Oh My Zsh ya está instalado. ¡Continúa a la <a href="./7-node">siguiente página!</a>
</details>

<img src="../../images/oh-my-zsh-verification.png" />

Si no ves un mensaje en tu terminal como el mostrado anteriormente, continúa con los pasos para la instalación.

**NOTA:** Puede que te pregunte si quieres actualizar tu terminal a `zsh`. **Selecciona `yes`.** Si aparece alguna advertencia o error, asegúrate de completar lo sugerido u obtén ayuda.

## Confirmando la Configuración

Vuelve a abrir tu terminar y ejecuta el siguiente comando para verificar que todo se haya configurado correctamente:

- `brew --version`

<details>
  <summary>
  Haz click <strong>AQUÍ</strong> si el output es <code>Homebrew 3.5</code> o superior
  </summary>

  ¡Estás listo para continuar a la <a href="./7-node">siguiente página!</a>

</details>

<details>
  <summary>
  De lo contrario haz click <strong>AQUÍ</strong> si recibes un error como <code>zsh: command not found: brew</code>

  </summary>

  <ul>
    <li>
      Ejecuta los siguientes comandos:
      <ol>
        <li><code>echo 'export BREW_HOME="/home/linuxbrew/.linuxbrew/bin"' >> $HOME/.zshrc</code></li>
        <li><code>echo 'export PATH="$PATH:$BREW_HOME"' >> $HOME/.zshrc</code></li>
        <li><code>reset</code></li>
      </ol>
    </li>
    <li>Vuelve a confirmarlo con el comando:
      <ul>
        <li><code>brew --version</code></li>
        <li>Deberías ver <code>Homebrew 3.5</code> o superior</li>
      </ul>
    </li>
  </ul>

  <strong>Si sigues obteniendo errores, <a href="../../error/error">haz click aquí</a> y no continúes con los siguientes pasos hasta que tengas Oh My Zsh debidamente instalado.</strong>
</details>
---

## Marcador

Añade estos sitios a tus marcadores para tener como referencia después a lo largo de las clases si se necesita:

- Bastante personalización disponible en su [repositorio de Github](https://github.com/ohmyzsh/ohmyzsh/)
- Este es un enlace a una [hoja de referencia.](https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet)

---

### [⇐ Anterior](./5-tree.md) | [Siguiente ⇒](./7-node.md)
