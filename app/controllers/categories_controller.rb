class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @items = @category.items
  end

  def index
    @categories = Category.all
  end
end
