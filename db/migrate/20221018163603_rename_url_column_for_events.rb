class RenameUrlColumnForEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :url, :ticket_url
  end
end
