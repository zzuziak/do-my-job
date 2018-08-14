class AddStatusToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :status, :integer, default: 2, null: false
  end
end
