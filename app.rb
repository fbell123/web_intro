require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    'Hello Battle!'
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:name_1])
    $player_2 = Player.new(params[:name_2])
    redirect '/play'

  end

  get '/play' do
    @name_1 = $player_1.name
    @name_2 = $player_2.name
    @status = nil
    erb (:play)
  end

  post '/attack' do
    @name_1 = $player_1.name
    @name_2 = $player_2.name
    @status = "attack"
    erb (:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end