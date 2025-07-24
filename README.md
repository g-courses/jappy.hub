# Jappy Server

Clonar este repositorio en el host servidor:
```
git clone https://github.com/g-courses/jappy.hub.git
```

Iniciar Jupyter Hub:

```
cd jappy.hub
docker compose up -d
```

Una vez que el contenedor esté operativo, se pueden ingresar al servidor Jupyter Hub en la URL:

```
http://IP_SERVIDOR:8000
```

Todo el directorio `/etc` del contenedor está montado desde el directorio `hub_etc` en el anfitrión. Esto permite que la configuración del sistema operativo del contenedor que en forma persistente en el sistema de archivo del anfitrión. Por ejemplo, creación de nuevos usuarios del servidor Jappy.

En forma similar, el directorio del contenedor `/home/hub_homes` está montado desde el directorio `hub_homes` en el anfitrión. Debido a lo anterior, se sugiere que los usuarios tengan sus HOMEs en el directorio `/home/hub_homes`, para mantener la persistencia de los datos de trabajo de los usuarios si el contenedor se apaga.

En el directorio `jupyterhub_custom` están archivos html personalizados que permiten cambiar el diseño de la página de login y otras.

En el directorio `hub_examples` se pueden agregar archivos de código que pueden ser visualizados por todos los usuarios. Esto es posible ya que cada usuario creado tiene un directorio llamado `codes_examples` que está mapeado al directorio mencionado. Si quiere que los usuarios de Jupyter no pueden modificar el contenido de este directorio, debe cambiar los permisos a `555`, por ejemplo: `chmod -R 555 hub_examples`.

Para iniciar Jappy cuando el host se inicie, debe modificar el script `jappy-hub`, que se localiza en el directorio `host_etc`. Específicamente, debe modificar la variable `JAPPY_INSTALL`, que es el directorio donde se ubican los archivo `docker-compose.yml`.

## Usuarios ya creados

El contenedor tiene dos usuarios unix para acceder al JupyterHub: 

1) `hubtest`: para conocer el uso de la plataforma. Contraseña `ninguna`.

2) `hubadmin`: para acceder al panel de administración de JupterHub.

## Creación de usuarios

Para la creación de usuarios unix, se debe utilizar el sistema webmin,disponible en la URL:

```
http://IP_SERVIDOR:10666
```

La planilla `crear_cuentas_hub.xlsx` permite crear los datos de entrada para crear usuarios en esta utilidad. Todo usuario unix creado puede acceder a JupyterHub.

