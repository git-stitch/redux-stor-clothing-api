class Api::V1::WishListsController < ApplicationController

  def index
    @wish_lists = WishList.all
    render json: @wish_lists
  end

  def show
    @wish_list = find_wish_list
    render json: @wish_list
  end

  def update
    @wish_list.update(wish_list_params)
    if @wish_list.save
      render json: @wish_list, status: :accepted
    else 
      render json: { errors: @wish_list.errors.full_messsages }, status: :unprocessible_entity
    end
  end

  def create
    @wish_list = WishList.create(wish_list_params)
    if @wish_list.valid?
      render json: @wish_list, status: :accepted 
    else 
      render json:{errors: @wish_list.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def wish_list_params
    params.permit(:user_id,:product_id,:quantity)
  end

  def find_wish_list
    @wish_list = WishList.find(params[:id])
  end
end
