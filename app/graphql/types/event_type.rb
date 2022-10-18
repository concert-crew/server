# frozen_string_literal: true

module Types
  class EventType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :date, GraphQL::Types::ISO8601DateTime
    field :image, String 
    field :_embedded, String 
    field :url, String 
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
    field :users, [Types::UserType]
  end
end
