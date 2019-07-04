require 'sinatra/base'

class Listing_manager <Sinatra::Base

  get '/' do
    erb :'index'
  end

  get '/listings/new' do
    erb :'listings'
  end

  post '/listings' do
    Listing.create(name: params[:name], description: params[:description])
    redirect :listings
  end

  run! if app_file == $0
end
