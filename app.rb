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
  
  post '/listings' do
    Listing.create(name: params[:name], description: params[:description])
    redirect :listings
  end
  
  get '/listings/new' do
    erb :'new'
  end

  run! if app_file == $0
end
