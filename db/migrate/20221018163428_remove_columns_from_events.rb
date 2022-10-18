class RemoveColumnsFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :_embedded
  end
end
