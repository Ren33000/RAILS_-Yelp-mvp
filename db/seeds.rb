require 'faker'

Restaurant.destroy_all 

5.times do
  Restaurant.create(
    name: Faker::Name.name,
	  address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: (["Chinese", "Italian", "Japanese", "French", "Belgian"].sample)
)
end