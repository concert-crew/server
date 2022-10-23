# frozen_string_literal: true

module Types
  class UserEventType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false 
    field :event_id, Integer, null: false 
  end
end
