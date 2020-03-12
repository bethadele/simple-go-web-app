#!/bin/sh

set -e

# $GOPATH is gopath/ folder
export MAINPATH=$(pwd)
export GOPATH=$(pwd)/gopath:$(pwd)/gopath/src/github.com/bethadele/simple-go-web-app/Godeps/_workspace
cd gopath/src/github.com/bethadele/simple-go-web-app/

pwd > test-results.txt
echo "Test results:" >> test-results.txt
go test ./... >> test-results.txt
mv test-results.txt $MAINPATH/app-test-results/
