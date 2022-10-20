class User < ApplicationRecord
  has_many :user_events
  has_many :events, through: :user_events
  
  has_many :friends, ->(user) { where("follower_id = ? OR followed_id = ?", user.id, user.id)}

  validates_presence_of :name
  validates_presence_of :image, allow_nil: true
end
