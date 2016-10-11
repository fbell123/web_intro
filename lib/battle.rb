require 'sinatra/base'
# require 'sinatra'
# require 'lib'

class Battle < Sinatra::Base
  #
  # #
  # post '/setup' do
  #   @p1_name = params[:player1_name]
  #   @p2_name = params[:player2_name]
  #   @p1_points = 100
  #   @p2_points = 100
  #
  #   erb(:battle)
  # end

  get '/' do
    'Hello Battle!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

#
# get '/' do
#   erb(:index)
# end
