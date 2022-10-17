class AddFieldsToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :image, :string
    add_column :events, :_embedded, :string
  end
end
