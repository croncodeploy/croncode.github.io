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

# Run tests (HTML Proofing)
test: build
	bundle exec htmlproofer _site --disable-external --ignore-urls "/^http:\/\/127.0.0.1/,/^http:\/\/0.0.0.0/,/^http:\/\/localhost/"

# Cleanup
clean:
	rm -rf _site .jekyll-cache .jekyll-metadata
