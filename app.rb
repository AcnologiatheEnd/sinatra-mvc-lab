require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/send' do 
    @word = params[:word].to_s
    @result = PigLatinizer.new.translate(@word)
  end
end