class StoreController < ApplicationController
  include CurrentCart
  before_action :current_cart

  def index
    @products = Product.order(:name)
  end
end
