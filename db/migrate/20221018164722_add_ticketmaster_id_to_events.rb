class AddTicketmasterIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :ticketmaster_id, :string
  end
end
