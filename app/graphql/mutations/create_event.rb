class Mutations::CreateEvent < Mutations::BaseMutation 
  argument :name, String, required: true 
  argument :date, String, required: true 
  argument :image, String, required: true 
  argument :_embedded, String, required: true 
  argument :url, String, required: true 

  field :event, Types::EventType, null: false 
  field :errors, [String], null: false 

  def resolve(name:, date:, image:, _embedded:, url:)
    event = Event.new(name: name, date: date, image: image, _embedded: _embedded, url: url)

    if event.save 
      {
        event: event, 
        errors: []
      }
    else 
      {
        user: nil, 
        errors: user.errors.full_messages
      }
    end
  end
end