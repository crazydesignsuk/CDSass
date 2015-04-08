configure :development do
  activate :livereload do |livereload|
    livereload.host = Socket.ip_address_list.detect{|intf| intf.ipv4_private?}.ip_address
  end
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :partials_dir, 'partials'

activate :directory_indexes
activate :autoprefixer

::Compass.configuration.sass_options = { :line_comments => false, :style => :expanded }

configure :build do

  # activate :minify_css
  # activate :minify_javascript
  # activate :asset_hash
  # activate :relative_assets

end

# deploy to github pages

# activate :deploy do |deploy|
  # deploy.method = :git
  # Optional Settings
  # deploy.remote   = 'custom-remote'         # remote name or git url, default: origin
  # deploy.branch   = 'master'                # default: gh-pages
  # deploy.strategy = :submodule              # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'	# commit message (can be empty)
# end