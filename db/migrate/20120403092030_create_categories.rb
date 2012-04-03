class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :categoryid
      t.string :name
      t.integer :price
      t.integer :weight
      t.integer :volume
      t.text :comments

      t.timestamps
    end
  end
end
