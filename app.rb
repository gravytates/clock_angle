require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/clock_angle')

get('/') do
  erb(:index)
end

get('/form_clock_angle') do
  @input = params.fetch('clock_angle').degree
  erb(:result)
end
