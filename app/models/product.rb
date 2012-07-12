class Product < ActiveRecord::Base
  attr_accessible :categoryid, :title, :description, :image_url, :price, :title
  
  def self.search(search)
    if search
      search = search.downcase
      where('LOWER(title) LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
  def self.to_csv(options = {})
    
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
        
      end
    end
  end
  
end
