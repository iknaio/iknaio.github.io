[![pages-build-deployment](https://github.com/iknaio/iknaio.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/iknaio/iknaio.github.io/actions/workflows/pages/pages-build-deployment)

# iknaio.github.io

## Requirements

* [Docker](https://docs.docker.com/get-docker/) - runs jekyll in a container
* [entr](https://eradman.com/entrproject/) - listens for changes on `sass/iknaio.scss`.
* [sass](https://sass-lang.com/install) - compiles `sass/iknaio.scss`.

## Develop

1. Clone this repo.
2. Run `make serve`.

Jekyll is recompiling scss on any content change, regardless whether an scss file is concerned or not. This results in a lame DevEx. So we compile scss outside of the jekyll and let jekyll pick up the generated css.

## Build for production

Run `make push`. This generates a production build and pushes the contents of the directoy `_site` to the branch `gh-pages`.
