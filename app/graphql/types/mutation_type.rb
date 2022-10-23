module Types
  class MutationType < Types::BaseObject
    field :create_event, mutation: Mutations::CreateEvent

    field :create_user_event, mutation: Mutations::CreateUserEvent
  end
end
