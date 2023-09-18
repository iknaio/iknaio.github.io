build:
	-git clone git@github.com:iknaio/iknaio.github.io _site
	cd _site && git checkout gh-pages
	JEKYLL_ENV=production ./run bundle exec jekyll build

setup:
	./setup

serve: setup
	./serve

push: setup build
	cd _site && \
		git add . && \
		git commit -m 'generate' -a && \
		git push


.PHONY: build setup serve push
