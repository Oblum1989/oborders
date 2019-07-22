class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :addres
      t.integer :celphone
      t.integer :nit

      t.timestamps
    end
  end
end
