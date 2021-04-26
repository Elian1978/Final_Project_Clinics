# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Clinic.destroy_all 

10.times do 
    clinic = Clinic.create(
      name: Faker::Name.name,
      phone: Faker::PhoneNumber.cell_phone,
      email: Faker::Internet.email,
      adress: Faker::Address.city,
      information: Faker::Lorem.sentence(word_count: 5),
      logo: " "
     
    )
end

10.times do 
      doctor = Doctor.create(
        email: Faker::Internet.email,
        encrypted_password: '123123',
        name: Faker::Name.name,
        specialty: Faker::Educator.subject,
        school: Faker::Educator.university,
        phone: Faker::PhoneNumber.cell_phone,
       
      )
end

10.times do
    patient = Patient.create(
        email: Faker::Internet.email,
        encrypted_password: '123123',
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        age: Faker::Number.between(from: 1, to: 120),
        language: "Ingles",
        sex: Faker::Demographic.sex,
        phone:  Faker::PhoneNumber.cell_phone,
        provincia: Faker::Address.city,
        canton: Faker::Address.state,
        distrito: "Guapiles",
        barrio: Faker::Address.street_address,

    )
end 
   



   
