class CreateServings < ActiveRecord::Migration
  def change
    create_table :servings do |t|
      t.string :day
      t.float :price
      t.string :location
      t.integer :number 
      t.references :meal, index: true, foreign_key: true 
      t.references :user, index: true, foreign_key: true 

      t.timestamps null: false
    end
  end
end
