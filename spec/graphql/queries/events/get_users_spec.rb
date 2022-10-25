require 'rails_helper'

module Queries
  module Users
    RSpec.describe Types::QueryType do 
      describe '.resolve' do 
        it 'returns all users' do 
          
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