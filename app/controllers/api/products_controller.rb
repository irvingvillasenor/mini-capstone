class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index,:show]
  
  def index
    @all_products = Product.all
    if params[:category]
      category = Category.find_by(name: params[:category])
      @all_products = category.products
    end
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
      description: params[:description],
      supplier_id: params[:supplier_id] 
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