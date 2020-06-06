require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    session["name"] = params[:item]
    @session = session
  end
  
  post '/checkout' do
    
  end
  

  
end