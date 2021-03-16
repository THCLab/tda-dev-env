#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Provide TDA version as first argument"
  exit
fi

export TDA_VERSION=$1
bash feed_with_env_vars.sh docker-compose.yml.template docker-compose.yml
docker-compose up -d
