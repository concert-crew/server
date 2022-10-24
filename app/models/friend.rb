class Friend < ApplicationRecord
  belongs_to :receiver, class_name: :User
  belongs_to :requestor, class_name: :User

  validates_presence_of :receiver_id, :requestor_id
end

