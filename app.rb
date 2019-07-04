require 'sinatra/base'
require_relative './lib/listing.rb'

class Listing_manager <Sinatra::Base

  get '/' do
    erb :'index'
  end

  get '/listings' do
    @listings = $array
    erb :'listings'
  end

  run! if app_file == $0
end
