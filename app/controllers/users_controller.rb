class UsersController < ApplicationController
    
    post '/users' do
        
        user = User.create(
            username: params[:username],
            password: params[:password]
        )
        
        user.to_json
    end
end