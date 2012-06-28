class Client < ActiveRecord::Base
  
  has_many  :invoices
  attr_accessible :count, :name, :contact, :comments, :sale

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
  
end
