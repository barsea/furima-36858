class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: :index
  before_action :move_to_index, only: :index

  def index
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def move_to_index
      redirect_to root_path if current_user == @item.user
  end
end