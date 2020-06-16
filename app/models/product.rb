class Product < ApplicationRecord

  belongs_to :supplier

  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :images
  has_many :carted_products

  validates :name, presence: true
  validates :name, length: {minimum: 2, maximum:50}
  validates :name, uniqueness: true
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :description, length: {in: 2...300}
  
  
  
  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
    
end