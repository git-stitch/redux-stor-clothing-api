class Api::V1::CartsController < ApplicationController

  before_action :find_cart, only: [:update]

  def index
    @carts = Cart.all
    render json: @carts
  end

  def show
    @cart = find_cart
    render json: @cart
  end

  def update
    @cart = find_cart
    @cart.update(cart_params)
    if @cart.save
      render json: @cart, status: :accepted
    else 
      render json: { errors: @cart.errors.full_messsages }, status: :unprocessible_entity
    end
  end

  def create
    @cart = Cart.create(cart_params)
    if @cart.valid?
      render json: @cart, status: :accepted 
    else 
      render json:{errors: @cart.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    payment = params["paying"]
    @user = User.find(cart_params["user_id"])
    @cart = find_cart
    # byebug
    if payment == "true"
        @user.carts.destroy_all
        render json: @user, status: :accepted
      else
        Cart.destroy(find_cart.id)
        render json: @user, status: :accepted
      end
  end

  private

  def cart_params
    params.permit(:user_id,:product_id,:quantity,:paying)
  end

  def find_cart
    @cart = Cart.find(params[:id])
  end
end
