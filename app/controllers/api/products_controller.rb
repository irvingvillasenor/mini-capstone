class Api::ProductsController < ApplicationController

def all_products
  @all_products = Product.all

  render "products.json.jb"
  
end

def laptop_action
  @laptop = Product.find_by(name: "Laptop")
  render "laptop.json.jb"
end

end
