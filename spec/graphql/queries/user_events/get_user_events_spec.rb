require 'rails_helper'

module Queries
  module UserEvents
    RSpec.describe Types::UserEventType do 
      describe '.reslove' do
        it 'can query a users events' do 

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