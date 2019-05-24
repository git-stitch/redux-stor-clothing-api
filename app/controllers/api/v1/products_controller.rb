class Api::V1::ProductsController < ApplicationController

  before_action :find_product, only: [:update]

  def index 
    @products = Product.all
    render json: @products
  end

  def show
    @product = find_product
    render json: @product
  end

  def update
    @product.update(product_params)
    if @product.save
      render json: @product, status: :accepted
    else 
      render jsosn: { errors: @note.errors.full_messsages }, status: :unprocessible_entity
    end
  end

  private

  def product_params
    params.permit(:name,:type,:price,:size)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
