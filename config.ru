require './application'
require 'sprockets'
require 'compass'

APP_ENV = ENV['RACK_ENV'] || 'development'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path "assets/stylesheets"
  environment.append_path "assets/images"
  environment.append_path "#{Gem.loaded_specs['compass'].full_gem_path}/frameworks/compass/stylesheets"
  run environment
end

run Application


