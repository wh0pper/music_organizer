require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/favorite_cities')
require('rspec')
require('pry')

get('/') do

  erb(:input)
end

post('/') do

  erb(:input)
end
