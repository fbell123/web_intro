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
   "<div style='border: 3px dashed red'>
      <img src='http://bit.ly/1eze8aE'>
    </div>"
end

get '/turtle' do
  'Squeak wow wow'
end

get '/chinchilla' do
  'Bark wee oui'
end
