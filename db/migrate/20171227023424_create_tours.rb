class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.integer :user_id
      t.string :tour_name, null: false
      t.string :tour_code
      t.string :destination, default: "Nghe an"
      t.integer :number_day, default: 3
      t.integer :number_night, default: 4
      t.date :departure_date
      t.date :return_date
      t.string :pickup_place, default: "Nghe an"
      t.integer :price, defaul: 40000
      t.string :image, default: "https://cdn2.ivivu.com/2017/03/08/16/ivivu-tour-phu-quoc-3n2d-kham-pha-dong-dao-nam-dao-lang-chai-ham-ninh.jpg"
      t.float :rate_avg, default: 3.0
      t.string :created_by

      t.timestamps
    end
  end
end
