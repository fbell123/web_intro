require 'sinatra'



get '/' do
  erb(:index)
end

post '/setup' do
  "Hello"
end
