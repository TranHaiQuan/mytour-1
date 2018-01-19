class CreateStipulates < ActiveRecord::Migration[5.1]
  def change
    create_table :stipulates do |t|
      t.integer :tour_id
      t.string :note
      t.string :cancel_tour

      t.timestamps
    end
  end
end
