class AddCategoryidToProducts < ActiveRecord::Migration
  def change
    add_column :products, :categoryid, :integer
  end
end
