#!/bin/bash

set -e

echo "Cleaning the openapi-go directory"

rm -rf /workspace/openapi-go/*

echo "Generate the OpenAPI Go client"

java -jar /opt/openapi/openapi-generator-cli.jar generate -g go --package-name runs.api.galasa.dev -i /workspace/openapi/runs/openapi.yaml -o /workspace/openapi-go

echo "OpenAPI Go client has been created in /workspace/openapi-go"
