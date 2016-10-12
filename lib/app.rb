require 'sinatra/base'
require_relative 'views/game'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $p1 = Player.new(params[:p1_name])
    $p2 = Player.new(params[:p2_name])
    $game = Game.new
    redirect ('/play')
  end

  get '/play' do
    @p1_name = $p1.name
    @p2_name = $p2.name
    @p1_hp = $p1.hp
    @p2_hp = $p2.hp
    erb(:play)
  end

  get '/attack' do
    @p1 = $p1
    @p2 = $p2
    $game.attack(@p2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
