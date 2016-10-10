require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  'My dirty little secret is?'
end

get '/puppy' do
  'Bow wow wow'
end

get '/cat' do
  'Meow wow wow'
end

get '/turtle' do
  'Squeak wow wow'
end

get '/chinchilla' do
  'Bark wee oui'
end
