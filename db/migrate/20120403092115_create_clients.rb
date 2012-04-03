class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :count
      t.string :name
      t.text :contact
      t.text :comments
      t.integer :sale

      t.timestamps
    end
  end
end
