  abby = User.create!(
    name: 'Abby', 
    image: 'https://avatars.githubusercontent.com/u/100726140?s=400&u=fefcffaec4d464cc411254317c47b087ab504c42&v=4'
  )

  chantal = User.create!(
    name: 'Chantal',
    image: 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'
  )

  mayu = User.create!(
    name: 'Mayu',
    image: 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'
  )

  shirley = User.create!(
    name: 'Shirley',
    image: 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png' 
  )

  john = User.create!(
    name: 'John',
    image: 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'
  )

Friend.create!(receiver_id: chantal.id, requestor_id: abby.id)
Friend.create!(receiver_id: mayu.id, requestor_id: abby.id)
Friend.create!(receiver_id: shirley.id, requestor_id: mayu.id)

5.times do 
  Event.create!(
    name: Faker::Artist.name, 
    date: Faker::Date.between(from: '2023-01-01', to: '2023-06-25'),
    image: Faker::LoremFlickr.image, 
    buy_tickets_url: Faker::Internet.url, 
    time: Faker::Time.between(from: 2.days.ago, to: Time.now), 
    venue_name: Faker::JapaneseMedia::DragonBall.character, 
    city: Faker::Address.city, 
    state: Faker::Address.state, 
    address: Faker::Address.street_address, 
    longitude: Faker::Address.longitude, 
    latitude: Faker::Address.latitude,
    ticketmaster_id: Faker::Number.leading_zero_number(digits: 10)
  )
end

Event.all.each do |event|
  User.all.each do |user|
    event.user_events.create!(user_id: user.id, event_id: event.id)
  end
end

