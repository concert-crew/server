class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.bigint :follower_id
      t.bigint :followed_id
      t.integer "status", default: 0
      t.index ["follower_id"], name: "index_friends_on_follower_id"
      t.index ["followed_id"], name: "index_friends_on_followed_id"

      t.timestamps
    end
  end
end
