class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :number
      t.string :memo

      t.timestamps
    end
  end
end
