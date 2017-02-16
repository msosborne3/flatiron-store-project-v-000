module ApplicationHelper

  def current_cart
    current_user.current_cart if current_user
  end

  def current_cart?
    !!current_cart
  end
end
