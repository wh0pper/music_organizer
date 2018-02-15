require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/artist')
# require('./lib/album')
require('rspec')
require('pry')

get('/') do
  @list = Artist.list
  erb(:artist_input)
end

get('/artist/:artist') do
  erb(:album_input)
end

post('/clear') do
  Artist.clear
  redirect '/'
end

post('/') do
  artist = params["artist"]
  artist_val = Artist.new({:name => artist})
  artist_val.add_to_list()
  @list = Artist.list
  erb(:artist_input)
end
