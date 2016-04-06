#!/bin/bash
export GOOS="linux"
export GOARCH="amd64"
export VERSION=1.2.0
export BUILD=`git rev-parse HEAD`

go build -ldflags "-X main.Version=${VERSION} -X main.Build=${BUILD}" -o dist/gserver gserver.go
