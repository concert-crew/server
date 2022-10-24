# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :image, String
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
    field :events, [Types::EventType]
    field :event_count, Integer 
    field :friends, [Types::UserType]

    def event_count
      object.events.count
    end

    def friends
      object.friendships
    end
  end
end
