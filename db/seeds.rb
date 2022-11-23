abby = User.create!(
  name: 'Abby', 
  image: 'https://avatars.githubusercontent.com/u/100726140?s=400&u=fefcffaec4d464cc411254317c47b087ab504c42&v=4'
)

chantal = User.create!(
  name: 'Chantal',
  image: 'https://user-images.githubusercontent.com/102189342/197836185-9b2f1f66-98a7-4d77-8b6e-53895b551950.jpg'
)

mayu = User.create!(
  name: 'Mayu',
  image: 'https://images.squarespace-cdn.com/content/v1/5b5dfb72697a9837b1f6751b/1534885910963-YMOY6TZ909TRZFKJ2ZDS/Mayu_Takeda.jpg'
)

shirley = User.create!(
  name: 'Shirley',
  image: 'https://user-images.githubusercontent.com/99003546/197829880-b3c44c56-bb7f-470d-8376-18bbc4b8eb49.jpeg' 
)

john = User.create!(
  name: 'John',
  image: 'https://user-images.githubusercontent.com/95776577/197830147-b7c5bba6-27b6-4a22-89e4-e84869dca926.png'
)

josh = User.create!(
  name: 'Josh',
  image: 'https://avatars.githubusercontent.com/u/102757890?v=4'
)

rue = User.create!(
  name: 'Rue',
  image: 'https://user-images.githubusercontent.com/99001315/197830041-398d68b7-6aaf-4bfb-a6df-714766f20e2f.jpeg'
)


Friend.create!(receiver_id: abby.id, requestor_id: chantal.id)
Friend.create!(receiver_id: abby.id, requestor_id: mayu.id)
Friend.create!(receiver_id: abby.id, requestor_id: shirley.id)
Friend.create!(receiver_id: abby.id, requestor_id: john.id)
Friend.create!(receiver_id: abby.id, requestor_id: josh.id)
Friend.create!(receiver_id: abby.id, requestor_id: rue.id)
Friend.create!(receiver_id: chantal.id, requestor_id: mayu.id)
Friend.create!(receiver_id: chantal.id, requestor_id: shirley.id)
Friend.create!(receiver_id: chantal.id, requestor_id: john.id)
Friend.create!(receiver_id: chantal.id, requestor_id: josh.id)
Friend.create!(receiver_id: chantal.id, requestor_id: rue.id)
Friend.create!(receiver_id: mayu.id, requestor_id: shirley.id)
Friend.create!(receiver_id: mayu.id, requestor_id: john.id)
Friend.create!(receiver_id: mayu.id, requestor_id: josh.id)
Friend.create!(receiver_id: mayu.id, requestor_id: rue.id)
Friend.create!(receiver_id: shirley.id, requestor_id: john.id)
Friend.create!(receiver_id: shirley.id, requestor_id: josh.id)
Friend.create!(receiver_id: shirley.id, requestor_id: rue.id)
Friend.create!(receiver_id: john.id, requestor_id: josh.id)
Friend.create!(receiver_id: john.id, requestor_id: rue.id)
Friend.create!(receiver_id: josh.id, requestor_id: rue.id)


event1 = Event.create!(
  name: "LIZZO",
  date: "2023-03-11",
  image: "https://s1.ticketm.net/dam/c/8cf/a6653880-7899-4f67-8067-1f95f4d158cf_124761_TABLET_LANDSCAPE_LARGE_16_9.jpg",  
  buy_tickets_url: "https://www.eticketing.co.uk/asmglobalmanchester",
  time: "19:30:00", 
  venue_name: "AO Arena", 
  city: "Manchester", 
  state: "Great Britain", 
  address: "Victoria Station, Hunts Bank", 
  longitude: "-2.244066", 
  latitude: "53.488164",
  ticketmaster_id: "ZxqgVMyxjZBYPJzwisVEJswJSIcnzynMZAA6"
)

event2 = Event.create!(
  name: "Clozee",
  date: "2023-03-24",
  image: "https://s1.ticketm.net/dam/a/a97/da6b1d3a-2403-4244-9d2b-15992fbeea97_1409151_TABLET_LANDSCAPE_LARGE_16_9.jpg",
  buy_tickets_url: "https://www.ticketmaster.com/clozee-tickets/artist/2236900",
  time: "17:30:00", 
  venue_name: "Downtown Miami", 
  city: "Miami", 
  state: "Florida", 
  address: "Streets of Downtown Miami", 
  longitude: "-80.213359", 
  latitude: "25.760077",
  ticketmaster_id: "K8vZ9174Uwf"
)

event3 = Event.create!(
  name: "Gryffin",
  date: "2022-12-09",
  image: "https://s1.ticketm.net/dam/a/64c/70f66fae-872e-4d31-9c2d-5862661d164c_1689531_TABLET_LANDSCAPE_LARGE_16_9.jpg",
  buy_tickets_url: "https://www.ticketmaster.com/gryffin-alive-tour-washington-district-of-columbia-12-09-2022/event/15005CAD0BFF765E",
  time: "20:15:00", 
  venue_name: "The Anthem", 
  city: "Washington", 
  state: "DC", 
  address: "901 Wharf St SW", 
  longitude: "-77.026165", 
  latitude: "38.880099",
  ticketmaster_id: "G5vfZ91V5TM_r"
)

event4 = Event.create!(
  name: "The Flaming Lips",
  date: "2022-11-16",
  image: "https://s1.ticketm.net/dam/a/cfe/ee66f88d-f509-442e-b878-a19abf97ccfe_1521761_TABLET_LANDSCAPE_LARGE_16_9.jpg",
  buy_tickets_url: "https://www.ticketmaster.com/event/Z7r9jZ1AdAa0N",
  time: "20:00:00", 
  venue_name: "Showbox SODO", 
  city: "Seattle", 
  state: "WA", 
  address: "1700 1st Ave", 
  longitude: "-122.331596", 
  latitude: "47.576599",
  ticketmaster_id: "Z7r9jZ1AdAa0N"
)

event5 = Event.create!(
  name: "Khruangbin",
  date: "2022-11-09",
  image: "https://s1.ticketm.net/dam/a/222/75dce1b7-6e30-4c7c-9745-50fc07523222_1647891_TABLET_LANDSCAPE_LARGE_16_9.jpg",
  buy_tickets_url: "https://www.ticketmaster.com/khruangbin-honolulu-hawaii-11-09-2022/event/0A005CE7C1852567",
  time: "20:00:00", 
  venue_name: "Neal S Blaisdell Concert Hall", 
  city: "Honolulu", 
  state: "HI", 
  address: "777 Ward Avenue", 
  longitude: "-157.85069042", 
  latitude: "21.29950173",
  ticketmaster_id: "vvG1IZ9CLv-34E"
)

event6 = Event.create!(
  name: "Zhu",
  date: "2022-11-12",
  image: "https://s1.ticketm.net/dam/a/3ab/f1c769d6-d043-440b-bb9f-3477057393ab_1477661_TABLET_LANDSCAPE_LARGE_16_9.jpg",
  buy_tickets_url: "https://www.ticketmaster.com/event/Z7r9jZ1Ad4KG3",
  time: "19:00:00",
  venue_name: "Red Rocks Amphitheatre",
  city: "Morrison",
  state: "CO", 
  address: "18300 Visitor Center Dr", 
  longitude: "-105.228104",
  latitude: "39.598999",
  ticketmaster_id: "Z7r9jZ1Ad4KG3"
)


UserEvent.create!(user_id: abby.id, event_id: event1.id)
UserEvent.create!(user_id: chantal.id, event_id: event1.id)
UserEvent.create!(user_id: mayu.id, event_id: event2.id)
UserEvent.create!(user_id: shirley.id, event_id: event3.id)
UserEvent.create!(user_id: john.id, event_id: event4.id)
UserEvent.create!(user_id: josh.id, event_id: event5.id)