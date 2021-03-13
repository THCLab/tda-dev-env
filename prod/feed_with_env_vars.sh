#!/bin/bash
source .env
envsubst "`printf '${%s} ' $(bash -c "compgen -A variable")`" < $1 > $2
