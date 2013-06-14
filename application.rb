require 'sinatra'
require 'haml'

class Application < Sinatra::Base

  get '/' do
    haml :index
  end

  get '/css-position' do
    haml :css_position
  end

  get '/jquery-events' do
    haml :jquery_events
  end 

end
