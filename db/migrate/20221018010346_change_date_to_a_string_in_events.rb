class ChangeDateToAStringInEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :date, :string
  end
end
