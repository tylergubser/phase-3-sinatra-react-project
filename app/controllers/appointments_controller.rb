class AppointmentsController < ApplicationController
    

    get "/appointments" do 
        appointment = Appointment.all
        appointment.to_json(include: :physician)
    end

    post "/appointments" do
        phys = Physician.all.sample
        appointment = Appointment.create(
        patient_id:params[:id],
        physician_id:phys[:id],
        appt_date:Date.today
        )
        appointment.to_json
      end

    delete "/appointments/:id" do
        appointment = Appointment.find(params[:id])
        appointment.destroy
        appointment.to_json
    end
end