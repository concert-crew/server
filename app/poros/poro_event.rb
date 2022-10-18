class PoroEvent
  attr_reader :name, :id, :buyTicketsUrl, :image, :date, :time, :venueName, :city, :state, :address, :longitude, :latitude
  def initialize(event_data)
    @name = event_data[:name]
    @id = event_data[:id]
    @buyTicketsUrl = event_data[:url]
    @image = find_largest_image(event_data[:images])[:url]
    @date = event_data[:dates][:start][:localDate]
    @time = event_data[:dates][:start][:localTime]
    @venueName = event_data[:_embedded][:venues].first[:name]
    @city = event_data[:_embedded][:venues].first[:city][:name]
    @state = event_data[:_embedded][:venues].first[:state][:name]
    @address = event_data[:_embedded][:venues].first[:address][:line1]
    @longitude = event_data[:_embedded][:venues].first[:location][:longitude]
    @latitude = event_data[:_embedded][:venues].first[:location][:latitude]
  end

  def find_largest_image(images)
    images.max_by do |image|
      image[:width]
    end
  end
end
