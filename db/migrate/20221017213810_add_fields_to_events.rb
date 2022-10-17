class AddFieldsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :url, :string
  end
end
