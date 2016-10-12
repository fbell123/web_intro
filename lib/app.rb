require 'sinatra/base'
require_relative 'views/game'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:p1_name], params[:p2_name])
    redirect ('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.players[@game.turn[1]])
    erb(:attack)
  end

  get '/switch_turns' do
    redirect ('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
