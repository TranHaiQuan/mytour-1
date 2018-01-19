class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :tour_id
      t.integer :number_customer
      t.integer :total_price
      t.string :notebook
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
