class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
 
  post '/login' do 
  user = User.find_by(:username => params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id ] = user.id 
    redirect to "/patients"
  else 
    flash[:error] = "Not this time pal."
    redirect to '/'
    end
  end

end
