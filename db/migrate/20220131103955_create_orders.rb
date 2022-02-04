class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false
      t.string :memo

      t.timestamps
    end
  end
end
