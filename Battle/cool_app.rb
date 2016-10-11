require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'cool battle'
  end
  run! if app_file == $0
end
