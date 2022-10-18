class Event < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :date
  validates_presence_of :image
  validates_presence_of :buy_tickets_url
  validates_presence_of :time
  validates_presence_of :venue_name
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :address
  validates_presence_of :longitude
  validates_presence_of :latitude
  validates_presence_of :ticketmaster_id

  has_many :user_events
  has_many :users, through: :user_events
end
