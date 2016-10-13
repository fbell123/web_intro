require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.begin(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = @game.call
    erb(:play)
  end

  get '/attack' do
    @game = @game.call
    @game.attack(@game.current(@game.turn))
    erb(:attack)
  end

  post '/switch' do
    $game.switch
    redirect '/play'
  end

  run! if app_file == $0
end
