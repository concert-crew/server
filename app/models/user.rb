class User < ApplicationRecord
  has_many :user_events
  has_many :events, through: :user_events
  
  has_many :friends, foreign_key: :requestor_id, class_name: "Friend"
  has_many :friends, foreign_key: :receiver_id, class_name: "Friend"

  validates_presence_of :name
  validates_presence_of :image, allow_nil: true

  def friendships
    Friend.where("receiver_id = #{self.id} OR requestor_id = #{self.id}")
  end
end
