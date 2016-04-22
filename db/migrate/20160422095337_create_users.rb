class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :photo
      t.string :location
      t.string :phone

      t.timestamps null: false
    end
  end
end
