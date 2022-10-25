require 'rails_helper' 


RSpec.describe 'CreateEvent', type: :request do 
  describe '.resolve' do 

    before :each do  
      @user = User.create!(id: 111, name: 'Libby', image: 'url')
      @query = <<~GQL
                mutation{ 
                  createEvent(input:{
                    name: "Test Event", 
                    date: "today", 
                    image:"url", 
                    buyTicketsUrl:"url", 
                    time:"now", 
                    venueName:"here", 
                    city:"here", 
                    state: "here", 
                    address:"here", 
                    longitude: "here", 
                    latitude: "here", 
                    ticketmasterId: "abc"
                    userId: 111
                  }) {
                    event{ 
                      id, 
                      name,
                      attendees{
                        name
                      }
                    }
                    errors
                  }
                }
              GQL
      @event_count = Event.count 
      @user_event_count = UserEvent.count 
    end

    it 'creates an Event' do 
      expect(Event.count).to eq @event_count
      post '/graphql', params: {query: @query}
      expect(Event.count).to eq (@event_count + 1)
      expect(Event.last.name).to eq 'Test Event'
    end

    it 'creates a UserEvent' do 
      expect(UserEvent.count).to eq @user_event_count
      post '/graphql', params: {query: @query}
      expect(UserEvent.count).to eq (@user_event_count + 1)
      expect(UserEvent.last.user_id).to eq 111
    end

    it 'returns an Event' do 
      post '/graphql', params: {query: @query}
      json = JSON.parse(response.body)
      data = json['data']['createEvent']['event']

      expect(data['name']).to eq 'Test Event'
      expect(data['attendees'][0]['name']).to eq 'Libby'
    end
  end
end
