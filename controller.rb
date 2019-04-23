require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rps.rb')

also_reload('./modles/*')

get '/play/:player1/:player2' do
  @result =  RPSGame.check_win(params[:player1],params[:player2])
  erb(:result)
end

get '/' do
erb(:welcome)
end
