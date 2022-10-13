require 'rails_helper' 

RSpec.describe UserEvent do 
  describe 'relationships' do 
    it { should belong_to :user }
    it { should belong_to :event }
  end
end