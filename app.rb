require 'sinatra'



get '/' do
  "Hello World"
end

get '/secret' do
  "my secret is that I have a very messy room at the moment!"
end

get '/coffee' do
  "I like my coffee black and strong"
end

get '/run' do
  "I should really go for a run"
end

get '/random-cat' do
@name = ["Amigo", "Oscar", "Viking"].sample
erb(:index)
end

get '/named-cat' do
  p params
@name = params[:name]
erb(:index)
end
# <img src="smiley.gif" alt="Smiley face" border="5">
