class ItemsController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :show] # ひとまずprotospaceを参考に入れておいた。後で

  def index
  end

  def new
    @item = Item.new
  end

  def create
  end
end
