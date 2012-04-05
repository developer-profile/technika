class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :deadline
      t.text :comment
      t.string :person

      t.timestamps
    end
  end
end
