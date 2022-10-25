# frozen_string_literal: true

module Types
  class EventType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false 
    field :ticketmaster_id, String
    field :buy_tickets_url, String 
    field :image, String 
    field :date, String
    field :time, String 
    field :venue_name, String 
    field :city, String 
    field :state, String 
    field :address, String 
    field :longitude, String 
    field :latitude, String 
    field :attendees, [Types::UserType]
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
    field :user_id, Integer

    def attendees 
      object.users
    end
  end
end
