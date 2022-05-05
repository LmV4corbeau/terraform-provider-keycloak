#!/usr/bin/env bash

# keycloak 18 don't use /auth anymore
KEYCLOAK_URL="http://localhost:8080/"

printf "Waiting for local Keycloak to be ready"

until $(curl --output /dev/null --silent --head --fail --max-time 2 ${KEYCLOAK_URL}); do
    printf '.'
    sleep 2
done

echo
