
class PhysiciansController < ApplicationController
    get "/physicians" do 
        physician = Physician.all
        physician.to_json
    end

    get "/physicians/:id" do 
        physician = Physician.find(params[:id])
        physician.to_json(include: :patients)
    end

    post '/physicians' do
        physician = Physician.create(
          first_name:params[:first_name],
          last_name:params[:last_name],
          country:params[:country],
          license_number:params[:license_number],
          username:params[:username],
          password:params[:password],
        )
        physician.to_json
      end
end 