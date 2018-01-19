class CreateSeviceAttaches < ActiveRecord::Migration[5.1]
  def change
    create_table :sevice_attaches do |t|
      t.integer :tour_id
      t.string :insurrance
      t.string :meal
      t.string :tour_guide
      t.string :entrance_tickets
      t.string :chuttle_car

      t.timestamps
    end
  end
end
