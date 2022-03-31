class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :physicians, through: :appointments
    belongs_to :waitListPatients
    

    def new_appontments(physician, appt_date)
    
        Appointment.create(patient_id: self.id, physician_id: physician.id, appt_date: appt_date)
    end

end