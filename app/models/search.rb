class Search < ActiveRecord::Base
  attr_accessible :category_id, :keywords, :max_price, :min_price
  def products
    @products ||= find_products
    
  end
  
  def show
    
  end
  
private
  def find_products
    products = Priduct.order(:name)
    products = products.where("name like ?", "%#(keywords)%") if keywords.present?
    products = products.where(category_id: category_id) if category_id.present?
    products = products.where("price >=? ", min_price) if min_price.present?
    products = products.where("price <= ?", max_price) if max_price.present?
    products
  end
  
  
end
