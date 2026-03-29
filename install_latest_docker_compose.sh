sudo mkdir -p /usr/local/lib/docker/cli-plugins

DOCKER_COMPOSE_VERSION="v2.24.1"
sudo curl -SL "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-linux-x86_64" -o /usr/local/lib/docker/cli-plugins/docker-compose

sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
docker compose version
