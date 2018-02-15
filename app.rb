require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/artist')
require('./lib/album')
require('rspec')
require('pry')

enable :sessions

get('/') do
  @list = Artist.list
  erb(:artist_input)
end

post('/') do
  artist = params["artist"]
  artist_val = Artist.new({:name => artist})
  artist_val.add_to_list()
  @list = Artist.list
  erb(:artist_input)
end

post('/clear') do
  Artist.clear
  redirect '/'
end

get('/artist/:artist') do
  print params
  @album_list = []
  @artist_val = params.fetch(:artist)
  session[:current_artist] = @artist_val
  erb(:album_input)
end

# get('/albums') do
#   erb(:album_input)
# end

post("/artist/albums") do
  print session[:current_artist]
  @artist_val = session[:current_artist]
  album_name = params["album"]
  album_val = Album.new({:album_name => album})
  album_val.add_to_list()
  @album_list = Album.list
  erb(:album_input)
end
