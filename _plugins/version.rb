# frozen_string_literal: true

# A simple Jekyll plugin to auto-increment the version based on GitHub Run Number

Jekyll::Hooks.register :site, :after_init do |site|
  # Default to 0 if not running in CI
  rev = ENV['GITHUB_RUN_NUMBER'] || '0'
  
  # Read the base version (Major.Minor) from the VERSION file
  base = File.read(File.join(site.source, 'VERSION')).strip
  
  # Set the full version (e.g., 0.1.1)
  site.config['version'] = "#{base}.#{rev}"
  
  puts "Building with Site Version: #{site.config['version']}"
end
