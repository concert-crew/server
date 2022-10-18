require 'rails_helper'

RSpec.describe EventsFacade do 
  it 'creates poro for event data' do
    events = EventsFacade.get_events('Seattle')
    expect(events).to be_a(Array)
  end
end