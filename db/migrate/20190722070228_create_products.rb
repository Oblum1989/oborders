class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :size
      t.string :packing
      t.decimal :price

      t.timestamps
    end
  end
end
