require 'sinatra/base'
require 'sinatra/reloader'

class BattleApp < Sinatra::Base
  configure :devlopment do
    register Sinatra::Reloader
  end

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect '/play'
  end

  get '/play' do 
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    erb :play
  end
  
  get '/attack' do
    erb :attack
    redirect '/play'
  end
  run! if @app_file == $0
end