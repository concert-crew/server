require 'rails_helper' 

RSpec.describe Event do 
  describe 'validations' do 
    it { should validate_presence_of(:artist_name) }
    it { should validate_presence_of(:venue_name) }
    it { should validate_presence_of(:venue_location) }
    it { should validate_presence_of(:date) }
  end

  describe 'relationships' do 
    it { should have_many :user_events }
    it { should have_many(:users).through(:user_events) }
  end
end