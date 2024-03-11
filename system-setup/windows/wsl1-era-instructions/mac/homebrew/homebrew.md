# Instala Homebrew

NOTA: Asegúrate de aceptar cuando te pida instalar las Herramientas de Línea de Comandos de Xcode.  Se te pedirá ingresar tu contraseña de mac. **No podrás ver lo que estás escribiendo pero está registrando las teclas que presionas.**

**Ejecuta** este comando en tu terminal:

`ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)"`

Esto podrá tardar 30 minutos o más. Una vez que haya terminado, **ejecuta:**

 `brew doctor`

**Si** el output de respuesta es:

 ```
 Your system is ready to brew
```

**entonces ejecuta:**

`brew update`

[Continúa con el siguiente paso](../tree/tree.md)

---

**O si** el output de respuesta es:

```
-bash: brew: command not found
```

**o** algo extraño **entonces** [haz click aquí](../../error/error.md)

---
### [⇐ Anterior](check.md)