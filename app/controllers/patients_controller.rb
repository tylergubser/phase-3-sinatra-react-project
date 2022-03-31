class PatientsController < ApplicationController
    get "/patients" do 
        patients = Patient.all
        patients.to_json(include: :appointments)
    end 

    get "/patients/:username" do 
      patient = Patient.find_by_username(params[:username])
      patient.to_json(include: :appointments)
  end

  
    post '/patients' do
        patient = Patient.create(
          first_name:params[:first_name],
          last_name:params[:last_name],
          phone:params[:phone],
          id_number:params[:id_number],
          email:params[:email],
          username:params[:username],
          password:params[:password],
        )
        patient.to_json
      end

    patch '/patients/:id' do 
      patient = Patient.find(params[:id])
      patient.update(
        first_name:params[:first_name],
        last_name:params[:last_name],
        phone:params[:phone],
        id_number:params[:id_number],
        email:params[:email],
      )
      patient.to_json
    
    end

    

end