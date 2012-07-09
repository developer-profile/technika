class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  
  def self.search(search)
    if search
      search = search.downcase
      where('LOWER(title) LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
end
