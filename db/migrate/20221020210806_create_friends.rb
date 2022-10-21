class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.bigint :receiver_id
      t.bigint :requestor_id
      t.index ["receiver_id"], name: "index_friends_on_receiver_id"
      t.index ["requestor_id"], name: "index_friends_on_requestor_id"

      t.timestamps
    end
  end
end
