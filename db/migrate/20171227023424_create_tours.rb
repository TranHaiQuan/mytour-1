class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.integer :user_id
      t.string :tour_name
      t.string :tour_code, default: SecureRandom.hex(6)
      t.string :destination
      t.integer :number_day
      t.integer :number_night
      t.date :departure_date, default: Date.today.strftime("%d/%m/%Y")
      t.date :return_date
      t.string :pickup_place
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
