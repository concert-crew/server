user = User.create!(name: 'Abby', image: 'https://avatars.githubusercontent.com/u/100726140?s=400&u=fefcffaec4d464cc411254317c47b087ab504c42&v=4')

5.times do 
  Event.create!(artist_name: Faker::Artist.name, venue_name: Faker::Restaurant.name, venue_location: Faker::Address.full_address, date: Faker::Date.between(from: '2023-01-01', to: '2023-06-25'))
end

Event.all.each do |event| 
  event.user_events.create!(user_id: user.id, event_id: event.id)
end

