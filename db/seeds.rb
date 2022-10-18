abby = User.create!(name: 'Abby', image: 'https://avatars.githubusercontent.com/u/100726140?s=400&u=fefcffaec4d464cc411254317c47b087ab504c42&v=4')

chantal = User.create!(name: 'Chantal', image: 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png')

mayu = User.create!(name: 'Mayu', image: 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png')

shirley = User.create!(name: 'Shirley', image: 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png')

john = User.create!(name: 'John', image: 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png')

5.times do 
  Event.create!(
    name: Faker::Artist.name, 
    date: '{
          start: {
            localDate: "2022-10-22",
            localTime: "19:30:00",
          }
        }',
    image: Faker::LoremFlickr.image, 
    _embedded: '{
          venues: [
            {
              name: "Greek Theatre-Los Angeles",
              city: {
                name: "Los Angeles",
              },
              state: {
                stateCode: "CA",
              },
              address: {
                line1: "2700 N. Vermont Ave.",
              },
              location: {
                longitude: "-118.292",
                latitude: "34.125198",
              },
            },
          ],
        }', 
    url: Faker::Internet.url)
end

Event.all.each do |event| 
  User.all.each do |user| 
    event.user_events.create!(user_id: user.id, event_id: event.id)
  end
end

