     
require 'sinatra'
require 'httparty'

get '/' do
  erb :index
end

get '/movies' do

  @movie = HTTParty.get("http://omdbapi.com/?apikey=#{ENV['OMDB_API_KEY']}&t=#{params[:title]}").parsed_response

  erb :show
end





