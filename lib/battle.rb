require 'sinatra'

get '/' do
  erb(:index)
end

post '/setup' do
  @p1_name = params[:player1_name]
  @p2_name = params[:player2_name]
  @p1_points = 100
  @p2_points = 100
  erb(:battle)
end
