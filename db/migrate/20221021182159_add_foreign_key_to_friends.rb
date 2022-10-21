class AddForeignKeyToFriends < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :friends, :users, column: :receiver_id
    add_foreign_key :friends, :users, column: :requestor_id
  end
end
