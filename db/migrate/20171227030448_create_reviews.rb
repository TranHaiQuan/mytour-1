class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :tour_id
      t.float :rate
      t.string :comment

      t.timestamps
    end
  end
end
