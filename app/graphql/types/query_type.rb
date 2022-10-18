module Types
  class QueryType < Types::BaseObject
    # # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    # include GraphQL::Types::Relay::HasNodeField
    # include GraphQL::Types::Relay::HasNodesField

    # all Users 
    field :users, [Types::UserType], null: false 

    def users 
      User.all
    end

    # single User
    field :user, Types::UserType, null: false do 
      argument :name, String, required: true 
    end

    def user(name:)
      User.find_by(name: name)  
    end
  end 
end
