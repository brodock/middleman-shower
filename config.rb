###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
   activate :livereload
end

helpers do
  def presentation_title
    # set your presentation title here
    "My Presentation Title"
  end

  def presentation_description
    # set your presentation description here
    "description of presentation..."
  end

  # outputs slides in the slides folders
  def slides(folder = "slides")
    results = []
    Dir["./source/#{folder}/_*.html.*"].each do |slide_path|
      slide_path = slide_path.gsub("./source/", "").gsub("/_", "/").gsub(/$_/, "")
      results << slide_path
    end
    results
  end
end

# Show progress bar?
set :progress, true

# Middleman configs:

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'pictures'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
