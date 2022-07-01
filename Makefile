build:
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
