[![pages-build-deployment](https://github.com/iknaio/iknaio.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/iknaio/iknaio.github.io/actions/workflows/pages/pages-build-deployment)

# iknaio.github.io

## Requirements

* [Docker](https://docs.docker.com/get-docker/) - runs jekyll in a container

## Develop

1. Clone this repo.
2. Run `make clean`.
3. Run `make serve`.

## Internationalization

I18n is achieved via [jekyll-polyglott](https://github.com/untra/polyglot) plugin. Translated pages go under the respective language folder, eg. `/de` for German. Pages are linked together via their permalink value in the front matter. 

## Build for production

Run `make push`. This generates a production build and pushes the contents of the directoy `_site` to the branch `gh-pages`.
