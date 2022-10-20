class EventSerializer
  class << self
    def new(events)
      {
        data: { 
          events: events.map do |event| {
            ticketmasterId: event.id,
            name: event.name,
            buyTicketsUrl: event.buyTicketsUrl,
            image: event.image,
            date: event.date,
            time: event.time,
            venueName: event.venueName,
            city: event.city,
            state: event.state,
            address: event.address,
            longitude: event.longitude,
            latitude: event.latitude
          }
          end
        }
      }
    end
  end
end