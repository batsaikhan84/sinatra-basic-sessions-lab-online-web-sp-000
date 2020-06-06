require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    session["name"] = params[:item]
    @session = session
  end
  
  post '/checkout' do
    
  end
  
  configure do
    enable :sessions
    session_secret, "secret"
  end
  
end