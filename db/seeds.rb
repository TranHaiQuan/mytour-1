User.delete_all

50.times do |n|
  name = "admin#{n+1}-#{Faker::Name.name}"
  email = "admin#{n+1}@gmail.com"
  phone = Faker::PhoneNumber.phone_number
  address = Faker::Address.country
  if n%2 == 1
    sex = 0
  else
    sex = 1
  end
  role = 0;
  password = "147852369"
  password_confirmation = "147852369"
  User.create!(name: name, email: email, phone: phone, address: address, sex: sex, role: role, password: password,
    password_confirmation: password_confirmation)
end

50.times do |n|
  name = "bus#{n+1}-#{Faker::Name.name}"
  email = "bus#{n+1}@gmail.com"
  phone = Faker::PhoneNumber.phone_number
  address = Faker::Address.state
  if n%2 == 1
    sex = 0
  else
    sex = 1
  end
  role = 1;
  password = "147852369"
  password_confirmation = "147852369"
  User.create!(name: name, email: email, phone: phone, address: address, sex: sex, role: role, password: password,
    password_confirmation: password_confirmation)
end
50.times do |n|
  name = "user#{n+1}-#{Faker::Name.name}"
  email = "user#{n+1}@gmail.com"
  phone = Faker::PhoneNumber.phone_number
  address = Faker::Address.street_name
  if n%2 == 1
    sex = 0
  else
    sex = 1
  end
  role = 2;
  password = "147852369"
  password_confirmation = "147852369"
  User.create!(name: name, email: email, phone: phone, address: address, sex: sex, role: role, password: password,
    password_confirmation: password_confirmation)
end
