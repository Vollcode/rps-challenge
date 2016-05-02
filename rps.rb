require 'sinatra/base'
require './lib/player'
require './lib/game'


class Rps < Sinatra::Base
  enable :sessions
get '/' do
  erb :index
end

post '/games' do
player = Player.new(params[:player_name])
@game = Game.create(player)
redirect '/rps' if params[:game] == "rps"
redirect '/rpsls' if params[:game] == "rpsls"
redirect '/' if params[:game] == nil
end

before { @game = Game.instance}

get '/rps' do
  @game
  erb :rps
end

post '/rpsresult' do
  @game.player.choice(params[:options])
  redirect '/result'
  redirect '/rps' if params[:options] == nil
end

get '/result' do
  @game.computers_choice
  erb :result
end

get '/rpsls' do
  erb :rpsls
end

  run! if app_file == $0
end
