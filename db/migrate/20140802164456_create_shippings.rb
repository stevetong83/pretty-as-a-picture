class CreateShippings < ActiveRecord::Migration
  def change
    create_table :shippings do |t|
      t.string :method
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
