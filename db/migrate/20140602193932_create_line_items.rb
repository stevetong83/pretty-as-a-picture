class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :product_id
      t.integer :cart_id
      t.integer :order_id
      t.integer :quantity, default: 1

      t.timestamps
    end
    add_index :line_items, [:product_id, :cart_id], unique: true
    add_index :line_items, [:product_id, :order_id], unique: true
  end
end
