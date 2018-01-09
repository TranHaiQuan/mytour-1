class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :tour_id
      t.integer :number_customer
      t.date :departure_date, default: Date.today.strftime("%d/%m/%Y")
      t.integer :total_price
      t.string :notebook

      t.timestamps
    end
  end
end
