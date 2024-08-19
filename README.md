## Notas

-  **Código tomado del repositorio** [docker-limersurvey](https://github.com/martialblog/docker-limesurvey)

  -  **Creación de certificado SSL** [mkcert](https://github.com/FiloSottile/mkcert)

- colocar los archivos del certificado en la carpeta ssl
- nombrar los archivos: `fullchain.pem` y `privkey.pem`
- llenar las variables del archivo `.env.local` y renombrarlo a `.env`

 ## Comandos docker

**Levantar el contenedor**
`docker compose up -d`
`docker compose up --build -d`

**Detener el contenedor**
`docker compose stop`

  **Detener y eliminar el contenedor**
`docker compose down`