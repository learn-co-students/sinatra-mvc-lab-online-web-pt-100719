require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_phrase
  end
  post '/piglatinize' do
    new_pig = PigLatinizer.new #New PigLatinizer object
    @string = new_pig.piglatinize(params[:user_phrase]) # Create instance variable from form input
    erb :piglatinize
  end
end