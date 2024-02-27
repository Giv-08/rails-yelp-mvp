# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
kisume = { name: 'kisume', address: '234 flinders lane, melbourne 3000', phone_number: '293848475', category: 'japanese' }
plus_thirtynine = { name: 'Plus 39', address: '43 malvern, toorak', phone_number: '329384957', category: 'italian' }
cuff = { name: 'Cuff', address: '98 flinders lane, melbourne 300', phone_number: '518264502', category: 'chinese' }
sir_charles = { name: 'Sir Charles', address: '876 brunswick, 3432', phone_number: '443899200', category: 'french' }
piccolo_me = { name: 'Piccolo Me', address: '987 bourke street, melbourne 3000', phone_number: '200332846', category: 'belgian' }

[kisume, plus_thirtynine, cuff, sir_charles, piccolo_me].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
