Clinic.destroy_all 

5.times do 
    clinic = Clinic.create(
      name: Faker::Name.name,
      phone: Faker::PhoneNumber.cell_phone,
      email: Faker::Internet.email,
      adress: Faker::Address.city,
      information: Faker::Lorem.sentence(word_count: 5),
      logo: Faker::Avatar.image,
    )
end

5.times do 
      doctor = Doctor.create(
        email: Faker::Internet.email,
        password: '123123',
        name: Faker::Name.name,
        specialty: Faker::Educator.subject,
        school: Faker::Educator.university,
        phone: Faker::PhoneNumber.cell_phone,
       
      )
end

5.times do
    patient = Patient.create(
        email: Faker::Internet.email,
        password: '123123',
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
   



   
