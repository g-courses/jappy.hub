# jappy.hub

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

Todo el directorio `/etc` del contenedor está montado desde el directorio `hub_etc` en el anfitrión. Además, se sugiere que los usuarios tengan sus HOMEs en el directorio `/home/hub_homes`, el que está montado íntegramente en el directorio `hub_homes` en el anfitrión. Esto es para mantener la persistencia de los datos de trabajo de los usuarios si el contenedor se apaga.

En el directorio ``jupyterhub_custom` están los archivos html personalizados.

El contenedor tiene dos usuarios unix para acceder al JupyterHub: 

1) `hubtest`: para conocer el uso de la plataforma. Contraseña `ninguna`.

2) `hubadmin`: para acceder al panel de administración de JupterHub.

Para la creación de usuario unix, se debe utilizar el sistema webmin,disponible en la URL:

```
http://IP_SERVIDOR:10666
```

La planilla `crear_cuentas_hub.xlsx` permite crear los datos de entrada para crear usuarios en esta utilidad.

