# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Activate extension for Bourbon Sass mixins
activate :bourbon

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

activate :google_drive, load_sheets: ENV['GOOGLE_DRIVE_KEY']

# Build-specific configuration
configure :build do
  activate :minify_html

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster asset hashing of files
  activate :asset_hash
end

# Gzip files
activate :gzip

# Compress images
activate :imageoptim do |options|
  options.pngout = false
  options.svgo = false
end

# Heroku deployment
set :build_dir, 'tmp'

# Amazon Web Services deployment
# activate :s3_sync do |config|
#   config.bucket = ''
#   config.region = ''
#   config.aws_access_key_id =
#   config.aws_secret_access_key =
#   # Set this to true to deploy to s3
#   config.after_build = false
# end

# add default caching policy to all files
# default_caching_policy max_age:(60 * 60 * 24 * 365)
