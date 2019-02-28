#!/bin/bash

echo "Building binary"
GOOS=linux GOARCH=amd64 go build -o slackLambda slackLambda.go

echo "Create deployment package"
zip deployment.zip slackLambda

echo "Cleanup"
rm slackLambda
