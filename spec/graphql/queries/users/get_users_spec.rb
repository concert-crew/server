require 'rails_helper'

module Queries
  module Users
    RSpec.describe Types::QueryType do 
      describe '.resolve' do 
        it 'returns all users' do 
          user1 = User.create!(name: "Abby", image: "url")
          user2 = User.create!(name: "Chantal", image: "url")
          user3 = User.create!(name: "Mayu", image: "url")

          result = ServerSchema.execute(query).as_json
          expect(result['data']['users'].count).to eq(3)
          expect(result['data']['users'][0]['name']).to eq('Abby')
          expect(result['data']['users'][1]['name']).to eq('Chantal')
          expect(result['data']['users'][2]['name']).to eq('Mayu')
          expect(result['data']['users'][2]['name']).to_not eq('Abby')

          expect(result['data']['users'][0]).to have_key('name')
          expect(result['data']['users'][0]).to have_key('image')
        end 

        def query
          <<~GQL
          {
            users {
              name
              image
            }
          }
          GQL
        end 
      end 
    end 
  end 
end 