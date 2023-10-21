#!/bin/bash

# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan
docker build -t ghcr.io/thariqramadhan101/karsajobs:latest .
# Perintah untuk login ke GitHub Package
docker login ghcr.io -u thariqramadhan101 -p $GH_PACKAGES_TOKEN
# Perintah untuk push image ke GitHub Packages
docker push ghcr.io/thariqramadhan101/karsajobs:latest