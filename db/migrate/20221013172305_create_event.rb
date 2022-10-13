class CreateEvent < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :artist_name
      t.string :venue_name
      t.string :venue_location
      t.datetime :date

      t.timestamps
    end
  end
end
