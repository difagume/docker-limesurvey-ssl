## Notas

-  **Código base tomado del repositorio** [docker-limersurvey](https://github.com/martialblog/docker-limesurvey) 
- Llenar las variables del archivo `.env.local` y renombrarlo a `.env`
- Colocar los archivos del certificado en la carpeta ssl en caso de tenerlos.
	- Nombrar los archivos: `cert.pem` y `key.pem`
- En caso de no tener los archivos del certificado, configurar la variable `DOMAIN` en el archivo `.env` para generar automáticamente los archivos del certificado utilizando la herramienta [mkcert]

## Comandos docker

  **Levantar el contenedor**
`docker compose up -d`
`docker compose up --build -d`

  **Detener el contenedor**
`docker compose stop`

  **Detener y eliminar el contenedor**
`docker compose down`

  **Ver variables de entorno**
`docker compose config`

  **Ver logs**
`docker compose logs -f`