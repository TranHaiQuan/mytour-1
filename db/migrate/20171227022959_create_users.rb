class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :sex
      t.string :password_digest
      t.string :phone
      t.string :address
      t.boolean :admin, default: true

      t.timestamps
    end
  end
end
