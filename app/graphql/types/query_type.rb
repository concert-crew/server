module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

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

    # all Events 
    field :events, [Types::EventType], null: false 

    def events 
      Event.all 
    end

    # single Event 
    field :event, Types::EventType, null: false do 
      argument :name, String, required: true 
    end

    def event(name:)
      Event.find_by(name: name)
    end

    # all Users joined by a Friend association
    # field :friends, [Types::UserType], null: true

    # def friends(requestor_id:)
    #   binding.pry
    #   User.where(id: requestor_id)
    # end
  end 
end
