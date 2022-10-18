class PoroEvent
  attr_reader :name, :id, :url, :images, :date, :time, :venue_name, :venue_city, :venue_state, :venue_address, :longitude, :latitude
  def initialize(event_data)
    @name = event_data[:name]
    @id = event_data[:id]
    @url = event_data[:url]
    @images = event_data[:images]
    @date = event_data[:dates][:start][:localDate]
    @time = event_data[:dates][:start][:localTime]
    @venue_name = event_data[:_embedded][:venues].first[:name]
    @venue_city = event_data[:_embedded][:venues].first[:city][:name]
    @venue_state = event_data[:_embedded][:venues].first[:state][:name]
    @venue_address = event_data[:_embedded][:venues].first[:address][:line1]
    @longitude = event_data[:_embedded][:venues].first[:location][:longitude]
    @latitude = event_data[:_embedded][:venues].first[:location][:latitude]
  end
end
