# frozen_string_literal: true

module Types
  class EventType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false 
    field :ticketmasterID, String
    field :buyTicketsUrl, String 
    field :image, String 
    field :date, String
    field :time, String 
    field :venueName, String 
    field :city, String 
    field :state, String 
    field :address, String 
    field :longitude, String 
    field :latitude, String 
    field :attendees, [Types::UserType]
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime

    def attendees 
      object.users
    end
  end
end
