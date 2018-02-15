require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/artist')
require('./lib/album')
require('rspec')
require('pry')

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
  erb(:album_input)
end

# get('/albums') do
#   erb(:album_input)
# end

post("/artist/albums") do
  print params
  album = params["album"]
  album_val = Album.new({:album_name => album})
  album_val.add_to_list()
  @album_list = Album.list
  erb(:album_input)
end
