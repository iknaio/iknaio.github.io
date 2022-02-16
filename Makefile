build:
	JEKYLL_ENV=production ./run bundle exec jekyll build

setup:
	./setup

serve: setup
	./serve

push: setup build
	git commit -m 'generate' -a
	git subtree push --prefix _site origin gh-pages
	git push


.PHONY: build setup serve push
