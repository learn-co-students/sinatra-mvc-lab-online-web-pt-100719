require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end

  post '/' do
    text_from_user = params[:user_phrase]
    @piglatinized_text = PigLatinizer.new(text_from_user)
    erb :piglatinized
  end
  
end