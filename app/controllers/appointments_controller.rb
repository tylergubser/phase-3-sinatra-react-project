class AppointmentsController < ApplicationController
    

    get "/appointments" do 
        appointment = Appointment.all
        appointment.to_json(include: :physician)
    end
end