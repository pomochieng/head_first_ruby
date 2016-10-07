require 'sinatra'
require 'movie'

get('/movies') do  #Responds to GET requests for "/movies".
  @movies = []
  @movies[0] = Movie.new   #Set up a new Movie object
  @movies[0].title[0] = "Jaws"
  @movies[1] = Movie.new
  @movies[1].title = "Alien"
  @movies[2] = Movie.new
  @movies[2].title = "Terminator 2"
  erb :index       #Load "views/index.erb"
end
