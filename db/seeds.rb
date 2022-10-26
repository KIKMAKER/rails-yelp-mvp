puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

5.times do
  Restaurant.create(
    name: Faker::Cosmere.knight_radiant,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
end

puts "#{Restaurant.count} restaurants created"
puts 'Finished!'
