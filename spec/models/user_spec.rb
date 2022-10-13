require 'rails_helper' 

RSpec.describe User do 
  describe 'validations' do 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:image).allow_nil }
  end

  describe 'relationships' do 
    it { should have_many: user_events }
    it { should have_many(:events).through(:user_events) }
  end
end