# frozen_string_literal: true

class EventsFacade
  class << self
    def get_events(keyword, city)
      events = EventsService.call_for_events(keyword, city)
      if events.has_key?(:_embedded)
        all_events = events[:_embedded][:events].map do |event|
          PoroEvent.new(event)
        end
      end
    end
  end
end
