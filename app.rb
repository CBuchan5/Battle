require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class BattleApp < Sinatra::Base
  configure :devlopment do
    register Sinatra::Reloader
  end

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    redirect '/play'
  end

  get '/play' do 
    @player_one = $player_one.name
    @player_two = $player_two.name
    erb :play
  end
  
  get '/attack' do
    
    @player_two = $player_two.name
    erb :attack
    # redirect '/play'
  end
  run! if @app_file == $0
end