class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.integer :tour_id
      t.string :description, null: false

      t.timestamps
    end
  end
end
