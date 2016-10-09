require 'sinatra'
require 'movie'

get('/movies') do  #Responds to GET requests for "/movies".
  @movies = []     #Set up an array of movies
  @movies[0] = Movie.new   #Set up a new Movie object
  @movies[0].title = "Jaws"
  @movies[1] = Movie.new
  @movies[1].title = "Alien"
  @movies[2] = Movie.new
  @movies[2].title = "Terminator 2"
  erb :index       #Load "views/index.erb"
end

get('/movies/new') do    #Add a second route, with a different path.
  erb :new      #Load "views/new.erb"
end

post('/movies/create') do
  @movie = Movie.new
  @movie.title = params['title']
  @movie.director = params['director']
  @movie.year = params['year']
end

