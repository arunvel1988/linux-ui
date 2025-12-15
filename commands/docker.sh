#!/bin/bash

REGISTRY="docker.io"
NAMESPACE="yourusername"

# Check Docker login
if ! docker info >/dev/null 2>&1; then
  echo "Docker daemon not running"
  exit 1
fi

if ! docker system info | grep -q "Username"; then
  echo "Not logged in to Docker registry"
  exit 1
fi

while read image
do
  if docker image inspect "$image" >/dev/null 2>&1; then
    echo "Image exists locally: $image"

    docker tag "$image" "$REGISTRY/$NAMESPACE/$image"

    if docker push "$REGISTRY/$NAMESPACE/$image"; then
      echo "Pushed successfully: $REGISTRY/$NAMESPACE/$image"
    else
      echo "Failed to push: $REGISTRY/$NAMESPACE/$image"
    fi

  else
    echo "Image not found locally: $image"
  fi

done < images.txt
