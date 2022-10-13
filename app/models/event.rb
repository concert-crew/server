class Event < ApplicationRecord
  validates_presence_of :artist_name
  validates_presence_of :venue_name
  validates_presence_of :venue_location
  validates_presence_of :date

  has_many :user_events
  has_many :users, through: :user_events
end