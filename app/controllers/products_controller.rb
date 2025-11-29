class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new 
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def product_params
      params.expect(product: [:name, :price, :quantity])
    end
end
