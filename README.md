[![pages-build-deployment](https://github.com/iknaio/iknaio.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/iknaio/iknaio.github.io/actions/workflows/pages/pages-build-deployment)

# iknaio.github.io

## Requirements

* [Docker](https://docs.docker.com/get-docker/) - runs jekyll in a container

## Develop

1. Clone this repo.
2. Run `make clean`.
3. Run `make serve`.

## Build for production

Run `make push`. This generates a production build and pushes the contents of the directoy `_site` to the branch `gh-pages`.
