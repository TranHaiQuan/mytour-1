class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.integer :user_id
      t.string :tour_name
      t.string :destination
      t.integer :number_day
      t.integer :number_night
      t.string :pick_up
      t.integer :price
      t.string :image
      t.float :rate_avg

      t.timestamps
    end
  end
end
