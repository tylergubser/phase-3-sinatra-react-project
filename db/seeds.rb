require 'faker'


puts "🌱 Seeding patients..."
    30.times do 
        Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.subscriber_number(length: 12), id_number: Faker::IDNumber.croatian_id, email: Faker::Internet.email, username: Faker::Internet.username, password: Faker::Internet.password)
    end

puts "🌱 Seeding physicians..."
    15.times do
        Physician.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, country: Faker::Address.country, license_number: Faker::Number.number(digits: 7), username: Faker::Internet.username, password: Faker::Internet.password)
    end

puts "🌱 Seeding appointments..."
    40.times do
        Appointment.create(patient_id: Patient.ids.sample, physician_id: Physician.ids.sample, appt_date: Faker::Date.between(from:'2022-03-01', to:'2022-05-01'))
    end
puts "✅ Done seeding!"
