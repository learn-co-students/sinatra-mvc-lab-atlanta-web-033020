require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @newInstance = PigLatinizer.new
        @userText = params[:user_phrase]
        erb :last_response
    end
end