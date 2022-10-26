require 'rails_helper'

module Queries
  module UserEvents
    RSpec.describe Types::UserEventType do 
      describe '.reslove' do
        it 'can query a users events' do 
          event1 = Event.create!(name: "Test Event", date: "today", image: 'url', buy_tickets_url: 'url', time: 'now', venue_name: 'here', city: 'here', state: 'here', address: 'here', longitude: 'here', latitude: 'here', ticketmaster_id: 'abc')
          event2 = Event.create!(name: "Another Event", date: "tomorrow", image: 'url', buy_tickets_url: 'url', time: 'noon', venue_name: 'there', city: 'there', state: 'there', address: 'there', longitude: 'there', latitude: 'there', ticketmaster_id: '123a')
          event3 = Event.create!(name: "Last Event", date: "tomorrow", image: 'url', buy_tickets_url: 'url', time: 'late', venue_name: 'here or there', city: 'there', state: 'here', address: 'there', longitude: 'there', latitude: 'here', ticketmaster_id: '123b')   
          user = User.create!(name: "Abby", image: "url", events: [event1, event2, event3])

          result = ServerSchema.execute(query).as_json
          expect(result['data']['users'][0]['events'].count).to eq(3)
          expect(result['data']['users'][0]['events'][0]['name']).to eq('Test Event')
          expect(result['data']['users'][0]['events'][0]['date']).to eq('today')
          expect(result['data']['users'][0]['events'][0]['image']).to eq('url')
          expect(result['data']['users'][0]['events'][0]['buyTicketsUrl']).to eq('url')
          expect(result['data']['users'][0]['events'][0]['time']).to eq('now')
          expect(result['data']['users'][0]['events'][0]['venueName']).to eq('here')
          expect(result['data']['users'][0]['events'][0]['city']).to eq('here')
          expect(result['data']['users'][0]['events'][0]['state']).to eq('here')
          expect(result['data']['users'][0]['events'][0]['address']).to eq('here')
          expect(result['data']['users'][0]['events'][0]['longitude']).to eq('here')
          expect(result['data']['users'][0]['events'][0]['latitude']).to eq('here')
          expect(result['data']['users'][0]['events'][0]['ticketmasterId']).to eq('abc')

          expect(result['data']['users'][0]['events'][0]).to have_key('name')
          expect(result['data']['users'][0]['events'][0]).to have_key('date')
          expect(result['data']['users'][0]['events'][0]).to have_key('image')
          expect(result['data']['users'][0]['events'][0]).to have_key('buyTicketsUrl')
          expect(result['data']['users'][0]['events'][0]).to have_key('time')
          expect(result['data']['users'][0]['events'][0]).to have_key('venueName')
          expect(result['data']['users'][0]['events'][0]).to have_key('city')
          expect(result['data']['users'][0]['events'][0]).to have_key('state')
          expect(result['data']['users'][0]['events'][0]).to have_key('address')
          expect(result['data']['users'][0]['events'][0]).to have_key('longitude')
          expect(result['data']['users'][0]['events'][0]).to have_key('latitude')
          expect(result['data']['users'][0]['events'][0]).to have_key('ticketmasterId')
        end 

        def query 
          <<~GQL
          {
            users {
              name
              image
              events {
                name
                date
                image 
                buyTicketsUrl 
                time 
                venueName 
                city 
                state 
                address 
                longitude 
                latitude
                ticketmasterId
              }
            }
          }
          GQL
        end 
      end 
    end
  end 
end