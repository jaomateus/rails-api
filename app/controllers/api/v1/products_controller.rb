class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products, status: 200
  end

  def create
    product = Product.new(
      name: product_params[:name],
      brand: product_params[:brand],
      price: product_params[:price],
      description: product_params[:description]
    )
    if product.save
      render json: product, status: 200
    else
      render json: {error: 'Error creatinn product'}
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    if product
      render json: product, status: 200
    else
      ender json: {error: 'Product not found'}
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :brand, :price, :descritpion)
  end
end
