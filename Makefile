.PHONY: install build serve clean

# Install both Ruby and Node dependencies
install:
	bundle install
	npm install

# Build assets (JS/CSS) and then the Jekyll site
build:
	npm run build
	bundle exec jekyll build

# Start the local server with livereload
# Note: Assets must be built at least once before serving
serve:
	bundle exec jekyll serve --livereload

# Cleanup
clean:
	rm -rf _site .jekyll-cache .jekyll-metadata node_modules
