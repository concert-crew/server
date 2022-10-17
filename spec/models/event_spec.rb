require 'rails_helper' 

RSpec.describe Event do 
  describe 'validations' do 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:_embedded) }
    it { should validate_presence_of(:url) }
  end

  describe 'relationships' do 
    it { should have_many :user_events }
    it { should have_many(:users).through(:user_events) }
  end
end