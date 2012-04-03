class CreateAnalitics < ActiveRecord::Migration
  def change
    create_table :analitics do |t|
      t.string :name
      t.date :date
      t.text :goods
      t.integer :counts
      t.text :comments
      t.integer :total

      t.timestamps
    end
  end
end
