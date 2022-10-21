class Friend < ApplicationRecord
  belongs_to :User
  belongs_to :follower, class_name: :User
  belongs_to :followed, class_name: :User

  validates_presence_of :followed_id, :follower_id, :status
  enum status: [:pending, :approved]
end