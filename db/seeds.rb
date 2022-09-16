puts 'Cleaning database...'
Pet.destroy_all

puts 'Creating pets...'
rock = { name: 'Rock', category: 'Dog', birth: Date.new(2019, 06, 13), adoption: false }
apollo = { name: 'Apollo', category: 'Dog', birth: Date.new(2021, 03, 03), adoption: false }
atila = { name: 'Átila', category: 'Dog', birth: Date.new(2021, 11, 02), adoption: false }
simba = { name: 'Simba', category: 'Cat', birth: Date.new(2020, 01, 25), adoption: false }
hunter = { name: 'Hunter', category: 'Cat', birth: Date.new(2020, 12, 07), adoption: false }


[rock, apollo, atila, simba, hunter].each do |attributes|
  pet = Pet.create!(attributes)
  puts "Created #{pet.name}"
end
puts 'Finished!'
