user = User.create!(name: 'Abby', image: 'https://avatars.githubusercontent.com/u/100726140?s=400&u=fefcffaec4d464cc411254317c47b087ab504c42&v=4')

5.times do 
  Event.create!(name: Faker::Artist.name, date: Faker::Date.between(from: '2023-01-01', to: '2023-06-25'), image: Faker::LoremFlickr.image, _embedded: Faker::FunnyName.name, url: Faker::Internet.url)
end

Event.all.each do |event| 
  event.user_events.create!(user_id: user.id, event_id: event.id)
end

