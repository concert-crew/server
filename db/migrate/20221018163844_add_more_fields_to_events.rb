class AddMoreFieldsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :time, :string
    add_column :events, :venue_name, :string
    add_column :events, :city, :string
    add_column :events, :state, :string
    add_column :events, :address, :string
    add_column :events, :longitude, :string
    add_column :events, :latitude, :string
  end
end
