class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders, id: false do |t|
      t.integer :order_number, default: 500 ,null: false, primary_key: true
      t.references :user, foreign_key: true
      t.string :memo

      t.timestamps
    end
  end
end
