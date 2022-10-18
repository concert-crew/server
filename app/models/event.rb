class Event < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :date
  validates_presence_of :image
  validates_presence_of :_embedded
  validates_presence_of :url

  has_many :user_events
  has_many :users, through: :user_events
end
