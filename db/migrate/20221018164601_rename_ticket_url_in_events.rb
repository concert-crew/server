class RenameTicketUrlInEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :ticket_url, :buy_tickets_url
  end
end
