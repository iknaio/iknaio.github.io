build: setup assets/main.css
	-git clone git@github.com:iknaio/iknaio.github.io _site
	cd _site && git checkout gh-pages
	JEKYLL_ENV=production ./run bundle exec jekyll build

setup:
	./setup

serve: setup
	./serve

push: build
	cd _site && \
		git add . && \
		git commit -m 'generate' -a && \
		git push -f

clean:
	docker rm -f ikna.io

assets/main.css: sass/iknaio.scss
	sass sass/iknaio.scss assets/main.css

.PHONY: build setup serve push clean
