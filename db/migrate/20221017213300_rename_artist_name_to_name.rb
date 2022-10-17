class RenameArtistNameToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :artist_name, :name
  end
end
