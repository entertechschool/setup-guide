# Code 301

## Base de datos de MongoDB

MongoDB es un servidor de base de datos NoSQL (almacén de documentos) que utilizaremos a lo largo de Code 301. En este paso, instalaremos MongoDB en tu sistema y lo prepararemos para su uso.

MongoDB viene en 2 partes, un **cliente** y un **servidor**... El **servidor** se ejecuta constantemente, esperando a que los **clientes** se conecten a él para poder almacenar y recuperar datos. El **servidor** se encarga de la gestión de los datos. Profundizarás mucho más en el funcionamiento interno de estos durante tus cursos.

## Instalación

Los pasos de instalación son ligeramente diferentes si estás ejecutando Mac o Windows/Linux. Sigue las instrucciones correspondientes a continuación.

### Usuarios de Mac

Abre tu terminar y ejecuta el siguiente comando para instalar el cliente y el servidor de MongoDB.

Esto tomará poco tiempo en completarse. Una vez que lo haga, tendrás que "iniciar" el servidor de base de datos mongo para que podamos asegurarnos de que los **clientes** se puedan conectar.

```bash
brew tap mongodb/brew
brew install mongodb-community
```

Después de que la instalación se complete, ejecuta el siguiente comando para iniciar el servidor de MongoDB:

```bash
brew services start mongodb-community
```

### Usuarios de Windows/WSL

> Nota: Debido a los cambios continuos de WSL2, es posible que la instalación local no funcione fácilmente.  Si este es el caso, tu instructor tendrá una opción en línea que compartirá en clase. Si tu instalación de MongoDB no funciona después del primer intento, toma una captura de pantalla del terminal para enviarla en lugar de la validación `mongosh` (mencionada a continuación) y *continúa sin la instalación local de MongoDB.* 

**Completa las siguientes secciones de [Instrucciones de Microsoft](https://docs.microsoft.com/es-es/windows/wsl/tutorials/wsl-database#install-mongodb{:target="_blank"}).**

- [Instalación de MongoDB](https://docs.microsoft.com/es-es/windows/wsl/tutorials/wsl-database#install-mongodb){:target="_blank"}
- [Añade el script de inicio para iniciar MongoDB como servicio](https://docs.microsoft.com/es-es/windows/wsl/tutorials/wsl-database#add-the-init-script-to-start-mongodb-as-a-service){:target="_blank"}

Una vez que hayas terminado, ejecuta `sudo service mongodb status` y deberás ver el estado `[ OK ]` en el lado izquierdo de la pantalla; de lo contrario, ejecuta `sudo service mongoDB start` para iniciar el servidor de base de datos.

### Usuarios de Linux

Ejecuta estos comandos, en orden, para instralar MongoDB. Ten en cuenta que para esta instalación, utilizaremos `apt` en lugar de `brew`.

```bash
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
sudo apt-get install gnupg
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
```

Una vez que se haya completado la instalación, tendremos que configurar MongoDB como un "servicio" para que pueda reiniciarse fácilmente.  Escribe los siguientes comandos en orden para configurarlo:

```bash
sudo curl -s https://raw.githubusercontent.com/mongodb/mongo/master/debian/init.d -o /etc/init.d/mongod
sudo chmod 755 /etc/init.d/mongod
sudo service mongod start
```

**En Ubuntu Linux**, mongo ahora se reiniciará automáticamente en cada inicio.

## Valida que los clientes se puedan conectar

Ahora, asegurémonos de que podemos conectarnos al servidor de MongoDB. Ejecuta este comando:

```bash
mongosh
```

Deberás ver algo parecido a lo siguiente:

```bash
Current Mongosh Log ID: 63604c9f419a468d5c5fd283
Connecting to:  mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+1.5.4
Using MongoDB:  6.0.0
Using Mongosh:  1.5.4

For mongosh info see: https://docs.mongodb.com/mongodb-shell/

>
```

La `>` en la parte inferior es lo que estás buscando. Es un prompt que te permite saber que estás conectado con el **cliente mongosh** a tu **servidor MongoDB** en ejecución

Toma una captura de pantalla de tu terminal cuando escribas `mongosh`. Envía esta captura de pantalla junto con las capturas de configuración de tu computadora para esta tarea.

Escribe `exit` para volver a tu bash shell. MongoDB se ha instalado correctamente.

---

### [⇐ Anterior](./) | [Siguiente ⇒](./2-code-challenges)
