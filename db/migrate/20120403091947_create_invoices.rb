class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :categoryid
      t.integer :number
      t.date :date
      t.text :goods
      t.integer :price
      t.integer :sale
      t.integer :total
      t.text :comments

      t.timestamps
    end
  end
end
