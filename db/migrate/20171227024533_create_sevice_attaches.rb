class CreateSeviceAttaches < ActiveRecord::Migration[5.1]
  def change
    create_table :sevice_attaches do |t|
      t.integer :tour_id
      t.boolean :is_insurrance
      t.string :ct_insurrance
      t.boolean :is_meal
      t.boolean :ct_meal
      t.boolean :is_tour_guide
      t.string :ct_tour_guide
      t.boolean :is_entrance_tickets
      t.string :ct_entrance_tickets
      t.boolean :is_shuttle_car
      t.string :ct_shuttle_car

      t.timestamps
    end
  end
end
