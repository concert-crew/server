class Mutations::CreateUserEvent < Mutations::BaseMutation
  argument :user_id, Integer, required: true 
  argument :event_id, Integer, required: true 

  field :user_event, Types::UserEventType, null: false 
  field :errors, [String], null: false 

  def resolve(user_id:, event_id:)
    user_event = UserEvent.new(user_id: user_id, event_id: event_id)

    if user_event.save 
      {
        user_event: user_event, 
        errors: []
      }
    else 
      {
        user_event: nil, 
        errors: user_event.errors.full_messages
      }
    end
  end
end