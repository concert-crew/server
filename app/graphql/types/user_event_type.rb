module Types
  class UserEventType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, String
    field :event_id, String
  end 
end 

