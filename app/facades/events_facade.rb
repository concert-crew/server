# frozen_string_literal: true

class EventsFacade
  class << self
    def get_events(keyword)
      events = EventsService.call_for_events(keyword)
      all_events = events[:_embedded][:events].map do |event|
        PoroEvent.new(event)
      end
    end
  end
end
