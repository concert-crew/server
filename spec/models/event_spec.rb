require 'rails_helper' 

RSpec.describe Event do 
  describe 'validations' do 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:buy_tickets_url) }
    it { should validate_presence_of(:time) }
    it { should validate_presence_of(:venue_name) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:longitude) }
    it { should validate_presence_of(:latitude) }
    it { should validate_presence_of(:ticketmaster_id) }
  end

  describe 'relationships' do 
    it { should have_many :user_events }
    it { should have_many(:users).through(:user_events) }
  end
end