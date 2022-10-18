require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe 'get events, happy path' do
    it 'returns a 200 status code' do
      keyword = 'Seattle'
      get "/api/v1/events?keyword=#{keyword}"

      expect(response).to be_successful
      expect(response).to have_http_status(200)

      events = JSON.parse(response.body, symbolize_names: true)
    end

    it 'returns a 200 status code' do
      keyword = 'Denver'
      get "/api/v1/events?keyword=#{keyword}"

      expect(response).to be_successful
      expect(response).to have_http_status(200)

      events = JSON.parse(response.body, symbolize_names: true)
      require 'pry'; binding.pry 
    end

    it 'returns a 200 status code' do
      keyword = 'Ranchero'
      get "/api/v1/events?keyword=#{keyword}"

      expect(response).to be_successful
      expect(response).to have_http_status(200)

      events = JSON.parse(response.body, symbolize_names: true)
      require 'pry'; binding.pry 
    end
  end
end
