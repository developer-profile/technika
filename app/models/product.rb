class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
end
