class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :category
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
