class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.string :state
      t.decimal :tax, precision: 8, scale: 2

      t.timestamps
    end
  end
end
