#!/bin/bash

# Membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .
# Melihat daftar image di lokal
docker images
# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/thariqramadhan101/a433-microservices:v1
# Login ke Docker Hub via Terminal
# Berdasarkan referensi https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-to-the-container-registry
echo $CR_PAT | docker login ghcr.io -u thariqramadhan101 --password-stdin
# Mengunggah image ke GitHub Packages
docker push ghcr.io/thariqramadhan101/a433-microservices:v1