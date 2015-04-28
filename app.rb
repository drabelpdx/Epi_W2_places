require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')

get("/") do
  @places = Place.all()
  erb(:index)
end

post('/') do
  description = params.fetch("description")
  place = Place.new(description)
  place.save()
  @places = Place.all()
  erb(:index)
end

# post("/places") do
#   description = params.fetch("description")
#   place = Place.new(description)
#   place.save()
#   erb(:places)
# end
