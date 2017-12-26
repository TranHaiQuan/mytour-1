class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :tour_id
      t.integer :number_customer
      t.datetime :departure_date

      t.timestamps
    end
  end
end
