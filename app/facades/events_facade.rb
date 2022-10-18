# frozen_string_literal: true

class EventsFacade
  class << self
    def get_events(keyword)
      events = EventsService.call_for_events(keyword)
    end
  end
end
