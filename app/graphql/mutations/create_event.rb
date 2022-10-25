class Mutations::CreateEvent < Mutations::BaseMutation 
  argument :name, String, required: true 
  argument :date, String, required: true 
  argument :image, String, required: true 
  argument :buy_tickets_url, String, required: true 
  argument :time, String, required: true 
  argument :venue_name, String, required: true 
  argument :city, String, required: true 
  argument :state, String, required: true 
  argument :address, String, required: true 
  argument :longitude, String, required: true 
  argument :latitude, String, required: true 
  argument :ticketmaster_id, String, required: true 
  argument :user_id, Integer, required: true

  field :event, Types::EventType, null: false 
  field :errors, [String], null: false 

  def resolve(name:, date:, image:, buy_tickets_url:, time:, venue_name:, city:, state:, address:, longitude:, latitude:, ticketmaster_id:, user_id:)
    existing_event = Event.find_by(name: name, date: date, city:city)
    # existing_user = UserEvent.find_by(user_id: user_id, event_id: existing_event.id)

    if existing_event 
      existing_user = UserEvent.find_by(user_id: user_id, event_id: existing_event.id)
      if existing_user
        {
          event: existing_event,
          errors: []
        }
      else 
        UserEvent.create(user_id: user_id, event_id: existing_event.id)
        {
          event: existing_event,
          errors: []
        }
      end 
    elsif existing_event == nil
      event = Event.create(name: name, date: date, image: image, buy_tickets_url: buy_tickets_url, time: time, venue_name: venue_name, city: city, state: state, address: address, longitude: longitude, latitude: latitude, ticketmaster_id: ticketmaster_id)
      UserEvent.create(user_id: user_id, event_id: event.id)
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
