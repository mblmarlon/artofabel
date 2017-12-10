class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render "products/new"
    end
  end

  def show
    @products = Product.all
  end

  def product_params
    params.require(:product).permit(:title, :photo)
  end
end
