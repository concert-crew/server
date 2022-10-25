require 'rails_helper'

module Queries
  module Events 
    RSpec.describe Types::EventType do 
      describe '.resolve' do 
        it 'returns an event' do 
          
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