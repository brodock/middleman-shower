require 'lib/shower'

activate :shower do |slide|
  slide.presentation_title = "My Presentation Title"
  slide.presentation_description = "description of presentation..."
  slide.progress_bar = true
end

# Middleman configs
# DON'T NEED TO EDIT ANYTHING BELLOW!

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'pictures'

# Markdown
set :markdown_engine, :kramdown

# Code highlight
set :markdown, input: 'GFM', coderay_bold_every: false

# Reload the browser automatically whenever files change
configure :development do
   activate :livereload, no_swf: true
end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets
end
