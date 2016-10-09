require 'sinatra'
require 'movie'

get('/movies') do  #Responds to GET requests for "/movies".
  @movies = Movie.new   #Set up a new Movie object
  @movies.title = "Jaws"
  erb :index       #Load "views/index.erb"
end
