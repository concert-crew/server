# frozen_string_literal: true

class EventsService
  class << self
    def call_for_events(keyword)
      response = conn.get("/discovery/v2/events.json?classificationName=music&countryCode=US&size=10&keyword=#{keyword}")
      parse_json(response)
    end

    def conn
      Faraday.new(url: "https://app.ticketmaster.com") do |faraday|
        faraday.params['apikey'] = ENV.fetch('ticketmaster_api_key')
      end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end

end
