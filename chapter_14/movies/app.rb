require 'sinatra'

get('/movies') do  #Responds to GET requests for "/movies".
  erb :index       #Load "views/index.erb"
end
