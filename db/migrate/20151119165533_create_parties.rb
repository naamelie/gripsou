class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :title
      t.string :photo
      t.string :organisateur
      t.text :description
      t.float :price
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
