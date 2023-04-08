class AddTicketmasterIdToConcert < ActiveRecord::Migration[7.0]
  def change
    add_column :concerts, :ticketmaster_id, :string
  end
end
