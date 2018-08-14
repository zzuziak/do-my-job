class RemoveAcceptedFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :accepted, :boolean
  end
end
