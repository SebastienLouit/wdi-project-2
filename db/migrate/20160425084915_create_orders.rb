class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :serving, index: true, foreign_key: true
      t.text :details
      t.string :status
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps null: false
    end
  end
end
