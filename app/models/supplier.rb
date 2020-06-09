class Supplier < ApplicationRecord

  #products method
  has_many :products
  # def product
    # Product.where(Supplier_id: self.id)
    
  # end

end
