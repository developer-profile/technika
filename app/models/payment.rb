class Payment < ActiveRecord::Base
  attr_accessible :client, :comments, :goods, :goodsprice, :sale, :totals
end
