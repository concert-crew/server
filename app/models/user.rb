class User < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :image, allow_nil: true 

  has_many :user_events
  has_many :events, through: :user_events
end