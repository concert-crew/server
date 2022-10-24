require 'rails_helper' 

RSpec.describe Friend do 
  describe 'validations' do 
    it { should validate_presence_of(:receiver_id) }
    it { should validate_presence_of(:requestor_id) }
  end

  describe 'relationships' do 
    it { should belong_to(:receiver) }
    it { should belong_to(:requestor) }
  end
end 