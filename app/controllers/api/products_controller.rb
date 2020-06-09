class Api::ProductsController < ApplicationController

  # def all_products
  #   @all_products = Product.all

  #   render "products.json.jb"
    
  # end

  # def laptop_action
  #   @laptop = Product.find_by(name: "Laptop")
  #   render "laptop.json.jb"
  # end

  # def single_product
  #   @single_product = Product.sample
  #   render "single_product.json.jb"

  # end

  def index
    @all_products = Product.all
    render "index.json.jb"
    
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
    
  end

  def create
    @product = Product.new(
      name: params[:name], 
      price: params[:price], 
      image_url: params[:image_url], 
      description: params[:description] 
    )
    if @product.save
      render "show.json.jb"
    else
      render json: {message: "Error"}
    end
    
  end

  def update
    @product = Product.find_by(id: params[:id] )
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    if @product.save
      render "show.json.jb"
    else
      render json: {message: "Error"}
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render "destroy.json.jb"
    
  end


end