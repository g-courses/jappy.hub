# jappy.hub


```
git clone https://github.com/g-courses/jappy.hub.git
cd jappy.hub
docker compose up -d
```

Una vez que el contenedor esté operativo, se pueden ingresar usuarios vía webmin. Para esto, debe ingresar en la URL:

```
http://IP_SERVIDOR:10000
```

El servidor Jupyter Hub está disponible en la URL:

```
http://IP_SERVIDOR:8000
```

Todo el directorio `/etc` del contenedor está montado desde el directorio `hub_etc` en el anfitrión. Además, se sugiere que los usuarios tengan sus HOMEs en el directorio `/home/hub_homes`, el que está montado íntegramente en el directorio `hub_homes` en el anfitrión. Esto es para mantener la persistencia de los datos de trabajo de los usuarios si el contenedor se apaga.
