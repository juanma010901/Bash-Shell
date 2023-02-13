![Visitantes](https://visitor-badge.glitch.me/badge?page_id=juanma010901.Bash-Shell&left_text=Visitantes)

# Bash-Shell 🚀

Lo primero debes saber que estos scripts sólo pueden ser ejecutados en entornos Unix [Linux](https://www.kernel.org/) o [macOS](https://www.apple.com/macos/), sin embargo, si te encuentras en un entorno de Windows existen algunas estrategias que puedes utilizar para acceder a estos entornos.

## Requisitos 📋
- Puedes crear una máquina virtual que te permtia ejecutar estos comandos en alguno de los entornos mencionados anteriormente. Puedes usar [Virtual Box](https://www.virtualbox.org/), [VM Ware](https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html).
- Puedes usar [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) (Windows Subsystem for Linux) que lo que hace es virtualizar un entorno de Linux pero dentro del sistema operativo de Windows. Recuerda que debes descargar la imagen de la versión de Linux que desees correr.


## Ejecutar los scripts 💻
Luego de tener tu entorno preparado para ejecutar cualquiera de los scripts puedes usar los siguientes comandos:

```shell
$ bash <nombre-del-script.sh> <argumentos en caso de tenerlos>
```

### Ejemplo
```shell
#Este es un script que no usa argumentos
$ bash 01_utilityPostgres.sh
```

```shell
#Ejecutado como bin (Recordar que el archivo debe tener permisos de administrador)
$ ./01_utilityPostgres.sh
```

#### Permisos de ejecución

Puedes ver los permisos de un archivo en específico usando:

```shell
$ ls -lah <nombre-del-archivo>
```

Para cambiar los permisos puedes usar, entre muchas otras formas:

```shell
#Dependerá de a qué grupos queremos darle permisos de ejecución pero para entorno de pruebas podemos usar
$ chmod +x <nombre-del-archivo>
#Sólo en el caso de que queramos ejecutar el archivo con la segunda opción
```

## Fuentes

[Perfil](https://platzi.com/p/juanma0109/)
</br>
Estas notas fueron tomadas gracias al siguiente curso [Programación en Bash-Shell](https://platzi.com/cursos/bash-shell/)

## Tecnologías Utilizadas 🛠️
[![GNU Bash 5.1.16](https://img.shields.io/badge/GNU%20Bash-4EAA25?style=for-the-badge&logo=GNU%20Bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Ubuntu 22.04.1](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)](https://ubuntu.com/)
[![WSL](https://img.shields.io/badge/WSL-0a97f5?style=for-the-badge&logo=linux&logoColor=white)](https://docs.microsoft.com/en-us/windows/wsl/)
	

