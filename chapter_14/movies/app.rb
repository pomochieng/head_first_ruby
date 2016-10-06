require 'sinatra'
require 'movie'

get('/movies') do  #Responds to GET requests for "/movies".
  @movie = Movie.new   #Set up a new Movie object
  @movie.title
  erb :index       #Load "views/index.erb"
end
