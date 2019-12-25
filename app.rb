require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/send' do 
    @word = params[:user_phrase]
    @result = PigLatinizer.new.piglatinize(@word)
  end
end