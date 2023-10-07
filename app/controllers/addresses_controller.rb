class AddressesController < ApplicationController
  before_action :authenticate_user! # Ensure user is logged in

  # Display a form for adding a new shipping address (for logged-in users).
  def new
    @address = Address.new
  end

  # Display a form for editing an existing shipping address (for logged-in users).
  def edit
    @address = Address.find(params[:id])
  end

  # List all user's shipping addresses (for logged-in users).
  def index
    @addresses = current_user.addresses
  end
end
