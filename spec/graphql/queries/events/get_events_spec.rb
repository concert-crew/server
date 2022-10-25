require 'rails_helper'

module Queries
  module Events 
    RSpec.describe Types::EventType do 
      describe '.resolve' do 
        it 'returns an event' do 
          event1 = Event.create!(name: "Test Event", date: "today", image: 'url', buy_tickets_url: 'url', time: 'now', venue_name: 'here', city: 'here', state: 'here', address: 'here', longitude: 'here', latitude: 'here', ticketmaster_id: 'abc')
          event2 = Event.create!(name: "Another Event", date: "tomorrow", image: 'url', buy_tickets_url: 'url', time: 'noon', venue_name: 'there', city: 'there', state: 'there', address: 'there', longitude: 'there', latitude: 'there', ticketmaster_id: '123a')
          event3 = Event.create!(name: "Last Event", date: "tomorrow", image: 'url', buy_tickets_url: 'url', time: 'late', venue_name: 'here or there', city: 'there', state: 'here', address: 'there', longitude: 'there', latitude: 'here', ticketmaster_id: '123b')
          
          result = ServerSchema.execute(query).as_json
          expect(result['data']['events'].count).to eq(3)
          expect(result['data']['events'][0]['name']).to eq('Test Event')
          expect(result['data']['events'][0]['date']).to eq('today')
          expect(result['data']['events'][0]['image']).to eq('url')
          expect(result['data']['events'][0]['buyTicketsUrl']).to eq('url')
          expect(result['data']['events'][0]['time']).to eq('now')
          expect(result['data']['events'][0]['venueName']).to eq('here')
          expect(result['data']['events'][0]['city']).to eq('here')
          expect(result['data']['events'][0]['state']).to eq('here')
          expect(result['data']['events'][0]['address']).to eq('here')
          expect(result['data']['events'][0]['longitude']).to eq('here')
          expect(result['data']['events'][0]['latitude']).to eq('here')
          expect(result['data']['events'][0]['ticketmasterId']).to eq('abc')
        end 


        def query 
          <<~GQL
          {
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
          GQL
        end 
      end 
    end
  end 
end 