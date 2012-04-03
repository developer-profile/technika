class CreateLogistics < ActiveRecord::Migration
  def change
    create_table :logistics do |t|
      t.date :date
      t.string :logistic
      t.integer :docnumber
      t.text :comments
      t.string :client

      t.timestamps
    end
  end
end
