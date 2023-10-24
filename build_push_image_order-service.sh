#!/bin/bash

# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan
docker build -t ghcr.io/thariqramadhan101/order-service:latest .
# Perintah untuk login ke GitHub Packages
docker login ghcr.io -u thariqramadhan101 -p $GH_PACKAGES_TOKEN
# Perintah untuk push image ke GitHub Packages
docker push ghcr.io/thariqramadhan101/order-service:latest