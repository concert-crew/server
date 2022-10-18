class AddFriendToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :friend, index: true
  end
end
