class PoroEvent
  attr_reader :name, :id, :buyTicketsUrl, :image, :date, :time, :venueName, :city, :state, :address, :longitude, :latitude
  
  def initialize(event_data)
    @name = name_check(event_data)
    @id = id_check(event_data)
    @buyTicketsUrl = ticket_check(event_data)
    @image = find_largest_image(event_data[:images])[:url]
    @date = date_check(event_data)
    @time = time_check(event_data)
    @venueName = venue_check(event_data)
    @city = city_check(event_data)
    @state = state_check(event_data)
    @address = address_check(event_data)
    @longitude = longitude_check(event_data)
    @latitude = latitude_check(event_data)
  end

  def find_largest_image(images)
    images.max_by do |image|
      image[:width]
    end
  end

  def name_check(event_data)
    if event_data.has_key?(:name)
      event_data[:name]
    else
      "nil"
    end
  end

  def ticket_check(event_data)
    if event_data.has_key?(:url)
      event_data[:url]
    else
      "nil"
    end
  end

  def id_check(event_data)
    if event_data.has_key?(:id)
      event_data[:id]
    else
      "nil"
    end
  end

  def date_check(event_data)
    if event_data[:dates][:start].has_key?(:localTime)
      event_data[:dates][:start][:localDate]
    else
      "nil"
    end
  end

  def time_check(event_data)
    if event_data[:dates][:start].has_key?(:localTime)
      event_data[:dates][:start][:localTime]
    else
      "nil"
    end
  end

  def city_check(event_data)
    if event_data[:_embedded][:venues].first.has_key?(:city)
      event_data[:_embedded][:venues].first[:city][:name]
    else
      "nil"
    end
  end

  def venue_check(event_data)
    if event_data[:_embedded][:venues].first.has_key?(:name)
      event_data[:_embedded][:venues].first[:name]
    else
      "nil"
    end
  end
  
  def state_check(event_data)
    if event_data[:_embedded][:venues].first.has_key?(:state)
      event_data[:_embedded][:venues].first[:state][:name]
    else
      "nil"
    end
  end

  def address_check(event_data)
    if event_data[:_embedded][:venues].first.has_key?(:address)
      event_data[:_embedded][:venues].first[:address][:line1]
    else
      "nil"
    end
  end

  def longitude_check(event_data)
    if event_data[:_embedded][:venues].first.has_key?(:location)
      event_data[:_embedded][:venues].first[:location][:longitude]
    else
      "nil"
    end
  end


  def latitude_check(event_data)
    if event_data[:_embedded][:venues].first.has_key?(:location)
      event_data[:_embedded][:venues].first[:location][:latitude]
    else
      "nil"
    end
  end
  
end
