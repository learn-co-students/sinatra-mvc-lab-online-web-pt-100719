require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_phrase = PigLatinizer.new
    @new_phrase = user_phrase.piglatinize(params[:user_phrase])
    erb :piglatinize
  
    # @user_phrase = params[:user_phrase].split
    # @pig_latinized_word = PigLatinizer.new(@user_phrase)
    # binding.pry
    # erb :'/piglatinize'
    
  end
  
end
