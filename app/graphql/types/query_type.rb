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

    # all UserEvents 
    field :user_events, [Types::UserEventType], null: false 

    def user_events
      UserEvent.all 
    end
  end 
end
