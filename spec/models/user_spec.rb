require 'rails_helper' 

RSpec.describe User do 
  describe 'validations' do 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:image).allow_nil }
  end

  describe 'relationships' do 
    it { should have_many(:user_events) }
    it { should have_many(:events).through(:user_events) }
  end 

  describe "#friendships" do
    it 'creates friendship association by user id' do
      chantal = User.create!(
        name: 'Chantal',
        image: 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'
      )

      abby = User.create!(
        name: 'Abby', 
        image: 'https://avatars.githubusercontent.com/u/100726140?s=400&u=fefcffaec4d464cc411254317c47b087ab504c42&v=4'
      )
      
      rue = User.create!(
        name: 'Rue',
        image: 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png' 
      )

      friendship1 = Friend.create!(receiver_id: chantal.id, requestor_id: abby.id)
      
      expect(abby.friendships).to eq([chantal])
      expect(abby.friendships).to_not eq([chantal, rue])
    end
  end
end
    