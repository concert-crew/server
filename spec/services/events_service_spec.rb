require 'rails_helper'

RSpec.describe EventsService do
  it 'gets events, happy path response', :vcr do
    response = EventsService.call_for_events('Denver')
    expect(response).to be_a(Hash)
    expect(response[:_embedded][:events].first).to have_key(:name)#event name
    expect(response[:_embedded][:events].first).to have_key(:id)#ticketmaster event ID
    expect(response[:_embedded][:events].first).to have_key(:url)#buy ticketsURL
    expect(response[:_embedded][:events].first).to have_key(:images)#images
    expect(response[:_embedded][:events].first[:dates][:start]).to have_key(:localTime)#event date
    expect(response[:_embedded][:events].first[:dates][:start]).to have_key(:localDate)#event date
    expect(response[:_embedded][:events].first).to have_key(:_embedded)
    expect(response[:_embedded][:events].first[:_embedded]).to have_key(:venues)
    expect(response[:_embedded][:events].first[:_embedded][:venues].first).to have_key(:name)#Venue name
    expect(response[:_embedded][:events].first[:_embedded][:venues].first[:city]).to have_key(:name)#Venue city
    expect(response[:_embedded][:events].first[:_embedded][:venues].first[:state]).to have_key(:name)#Venue state
    expect(response[:_embedded][:events].first[:_embedded][:venues].first[:address]).to have_key(:line1)#Venue address
    expect(response[:_embedded][:events].first[:_embedded][:venues].first[:location]).to have_key(:longitude)#Event longitude
    expect(response[:_embedded][:events].first[:_embedded][:venues].first[:location]).to have_key(:latitude)#Event latitude
    expect(response[:_embedded][:events].count).to eql(10)
  end

  it 'gets events, sad path response, no time', :vcr do
    response = EventsService.call_for_events('festival')
    expect(response).to be_a(Hash)
    expect(response[:_embedded][:events][6]).to have_key(:name)#event name
    expect(response[:_embedded][:events][6]).to have_key(:id)#ticketmaster event ID
    expect(response[:_embedded][:events][6]).to have_key(:url)#buy ticketsURL
    expect(response[:_embedded][:events][6]).to have_key(:images)#images
    expect(response[:_embedded][:events][6][:dates][:start]).to have_key(:localDate)#event date
    expect(response[:_embedded][:events][6][:dates][:start]).to_not have_key(:localTime)#event date
    expect(response[:_embedded][:events][6]).to have_key(:_embedded)
    expect(response[:_embedded][:events][6][:_embedded]).to have_key(:venues)
    expect(response[:_embedded][:events][6][:_embedded][:venues].first).to have_key(:name)#Venue name
    expect(response[:_embedded][:events][6][:_embedded][:venues].first[:city]).to have_key(:name)#Venue city
    expect(response[:_embedded][:events][6][:_embedded][:venues].first[:state]).to have_key(:name)#Venue state
    expect(response[:_embedded][:events][6][:_embedded][:venues].first[:address]).to have_key(:line1)#Venue address
    expect(response[:_embedded][:events][6][:_embedded][:venues].first[:location]).to have_key(:longitude)#Event longitude
    expect(response[:_embedded][:events][6][:_embedded][:venues].first[:location]).to have_key(:latitude)#Event latitude
    expect(response[:_embedded][:events].count).to eql(10)
  end

  it 'gets events, sad path response, no latitude', :vcr do
    response = EventsService.call_for_events('festival')
    expect(response).to be_a(Hash)
    expect(response[:_embedded][:events][6]).to have_key(:name)#event name
    expect(response[:_embedded][:events][6]).to have_key(:id)#ticketmaster event ID
    expect(response[:_embedded][:events][6]).to have_key(:url)#buy ticketsURL
    expect(response[:_embedded][:events][6]).to have_key(:images)#images
    expect(response[:_embedded][:events][6][:dates][:start]).to have_key(:localDate)#event date
    expect(response[:_embedded][:events][6][:dates][:start]).to_not have_key(:localTime)#event date
    expect(response[:_embedded][:events][6]).to have_key(:_embedded)
    expect(response[:_embedded][:events][6][:_embedded]).to have_key(:venues)
    expect(response[:_embedded][:events][6][:_embedded][:venues].first).to have_key(:name)#Venue name
    expect(response[:_embedded][:events][6][:_embedded][:venues].first[:city]).to have_key(:name)#Venue city
    expect(response[:_embedded][:events][6][:_embedded][:venues].first[:state]).to have_key(:name)#Venue state
    expect(response[:_embedded][:events][6][:_embedded][:venues].first[:address]).to have_key(:line1)#Venue address
    expect(response[:_embedded][:events][6][:_embedded][:venues].first[:location]).to have_key(:longitude)#Event longitude
    expect(response[:_embedded][:events][6][:_embedded][:venues].first[:location]).to have_key(:latitude)#Event latitude
    expect(response[:_embedded][:events].count).to eql(10)
  end

end