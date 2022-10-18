require 'rails_helper'

RSpec.describe EventsService do
  it 'gets events' do
    response = EventsService.call_for_events('Seattle')
    require 'pry'; binding.pry 
    expect(response).to be_a(Hash)
  end
end