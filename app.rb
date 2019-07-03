require 'sinatra/base'

class Listing_manager <Sinatra::Base

  get '/' do
    erb :'index'
  end

  run! if app_file == $0
end
