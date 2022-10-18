module Types
  class MutationType < Types::BaseObject
    field :create_event, mutation: Mutations::CreateEvent
  end
end
