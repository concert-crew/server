require 'rails_helper' 

RSpec.describe Friend do 
  describe 'validations' do 
    it { should validate_presence_of(:followed_id) }
    it { should validate_presence_of(:follower_id) }
    it { should validate_presence_of(:status) }
  end

  describe 'relationships' do 
    it { should belong_to(:follower) }
    it { should belong_to(:followed) }
  end
end 