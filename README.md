# Toolbox image

A docker image that comes with tools I need for debugging purposes.

## Installed tools

- grpcurl
- curl
- jq
- dig
- tcpdump

## Make targets

- image: build the docker image locally
- sanity-test: run a sanity test against the local build image
- sanity-sh: run a shell in the locally built image interactively
