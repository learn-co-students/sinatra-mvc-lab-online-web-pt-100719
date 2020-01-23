require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end
  post '/piglatinize' do
    new_pig = PigLatinizer.new #New PigLatinizer object
    @string = new_pig.piglatinize(params[:user_input]) # Create instance variable from form input
    erb :piglatinize
  end
end