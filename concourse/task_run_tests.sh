#!/bin/sh

set -e

# $GOPATH is gopath/ folder
export GOPATH=$(pwd)/gopath:$(pwd)/gopath/src/github.com/bethadele/simple-go-web-app/Godeps/_workspace
cd gopath/src/github.com/bethadele/simple-go-web-app/

echo "About to run tests..."
go test ./...

