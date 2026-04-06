.PHONY: install build serve clean

# Install Ruby dependencies
install:
	bundle install

# Build the Jekyll site
build:
	bundle exec jekyll build

# Start the local server with livereload
serve:
	bundle exec jekyll serve --livereload

# Cleanup
clean:
	rm -rf _site .jekyll-cache .jekyll-metadata
