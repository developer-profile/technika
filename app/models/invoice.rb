class Invoice < ActiveRecord::Base
  
  belongs_to :client
  has_many :products
  attr_accessible :number, :title, :goods, :categoryid,  :price, :sale, :total, :comments, :date

  
  # has_many :authors, through: :authorships
  

end
