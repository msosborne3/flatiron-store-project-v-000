class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :checkout]

  def show
  end

  def checkout
    @cart.checkout

    current_user.current_cart = nil

    redirect_to cart_path(@cart)
  end

  private

  def set_cart
    @cart = Cart.find_by(id: params[:id])
  end
end
