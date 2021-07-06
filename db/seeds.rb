require 'faker'

Restaurant.destroy_all 

5.times do
  Restaurant.create(
    name: Faker::Name.name,
	address: Faker::Address,
    phone_number: Faker::PhoneNumber.phone_number
    category: (["chinese", "italian", "japanese", "french", "belgian"].sample)
)
end