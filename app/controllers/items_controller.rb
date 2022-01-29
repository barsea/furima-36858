class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] # ひとまずprotospaceを参考に入れておいた

  def index
  end
end
