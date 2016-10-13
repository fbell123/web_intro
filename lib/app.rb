require 'sinatra/base'
require_relative 'views/game'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.start(params[:p1_name], params[:p2_name])
    redirect ('/play')
  end

  get '/play' do
    @game = Game.game
    erb(:play)
  end

  get '/attack' do
    @game = Game.game
    @game.attack(@game.idle_player)
    erb(:attack)
  end

  get '/switch_turns' do
    redirect ('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
