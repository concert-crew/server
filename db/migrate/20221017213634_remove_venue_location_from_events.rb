class RemoveVenueLocationFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :venue_location
  end
end
