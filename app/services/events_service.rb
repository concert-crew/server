# frozen_string_literal: true

class ParksService
  class << self
    def self.parks_near(keyword)
      response = conn.get('/')
      parse_json(response)
    end

    def self.conn
      Faraday.new(url: "https://app.ticketmaster.com") do |faraday|
        faraday.headers['apikey'] = ENV.fetch('trail_api_key', nil)
      end
    end

    def self.parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end

end
