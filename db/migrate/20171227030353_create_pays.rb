class CreatePays < ActiveRecord::Migration[5.1]
  def change
    create_table :pays do |t|
      t.integer :user_id
      t.integer :booking_id
      t.string :note

      t.timestamps
    end
  end
end
