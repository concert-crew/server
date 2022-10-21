require 'rails_helper'

RSpec.describe EventsFacade do 
  it 'creates poro for event data', :vcr do
    events = EventsFacade.get_events('Seattle')
    expect(events).to be_a(Array)
  end

  it 'creates poro for event data, sad path, missing attributes, name, longitude or latitude', :vcr do
    events = File.read('spec/fixtures/event_data.json')
    events = JSON.parse(events, symbolize_names: true)
    all_events = events[:_embedded][:events].map do |event|
      PoroEvent.new(event)
    end
  end
end
