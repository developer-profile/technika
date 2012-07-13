class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :client
      t.text :goods
      t.integer :goodsprice
      t.integer :sale
      t.integer :totals
      t.text :comments

      t.timestamps
    end
  end
end
