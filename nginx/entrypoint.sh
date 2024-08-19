#!/bin/sh

cert_path=/etc/letsencrypt
mkdir -p $cert_path

# if there is no certificate yet, get one
if [ ! -e "$cert_path/key.pem" ]
then
    echo "Instalando mkcert y generando certificado para $DOMAIN"
    set -ex

    # Actualizar la lista de paquetes
    apt-get update

    # Instalar mkcert sin recomendaciones
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y mkcert

    # Limpiar el caché de apt
    apt-get -y autoclean
    apt-get -y autoremove
    rm -rf /var/lib/apt/lists/*

    # Generar certificados con mkcert
    mkcert -key-file "$cert_path/key.pem" -cert-file "$cert_path/cert.pem" "$DOMAIN" "*.$DOMAIN"
fi

nginx -g "daemon off;"
