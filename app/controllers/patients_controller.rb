class PatientsController < ApplicationController
    get "/patients" do 
        patients = Patient.all
        patients.to_json
    end 

    get "/patients/:id" do 
        patient = Patient.find(params[:id])
        patient.to_json(include: :appointments)
    end


    post '/patients' do
        patient = Patient.create(
          first_name:params[:first_name],
          last_name:params[:last_name],
          username:params[:username],
          email:params[:email],
          phone:params[:phone],
          id_number:params[:id_number],
          password:params[:password],
        )
        patient.to_json
      end

    

end