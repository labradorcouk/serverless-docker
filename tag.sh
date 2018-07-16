#!/usr/bin/env bash
set -euf -o pipefail

docker tag $1 thelabradorcouk/serverless-docker:latest    