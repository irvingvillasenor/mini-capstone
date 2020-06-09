class Product < ApplicationRecord

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

  #supplier method
    belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

    has_many :images
end