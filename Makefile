build: setup 
	-git clone git@github.com:iknaio/iknaio.github.io _site
	cd _site && git checkout gh-pages
	JEKYLL_ENV=production ./run bundle exec jekyll build

setup:
	./setup

serve: setup
	./serve

publish: build
	cd _site && \
		git add . && \
		git commit -m 'generate' -a && \
		git push -f

clean:
	docker rm -f ikna.io

.PHONY: build setup serve publish clean
