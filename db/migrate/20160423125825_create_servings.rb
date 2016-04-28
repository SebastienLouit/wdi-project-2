class CreateServings < ActiveRecord::Migration
  def change
    create_table :servings do |t|
      t.date :day
      t.float :price
      t.string :location
      t.float :latitude
      t.float :longitude
      t.integer :number 
      t.references :meal, index: true, foreign_key: true 
      t.references :user, index: true, foreign_key: true 
      t.timestamps null: false
    end
  end
end
