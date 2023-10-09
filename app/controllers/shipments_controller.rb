class ShipmentsController < ApplicationController
  before_action :authenticate_admin!, only: [:edit]
  
  # Display shipment details and tracking information.
  def show
    @shipment = Shipment.find(params[:id])
  end

  # Display a form for editing shipment details (for admin users).
  def edit
    @shipment = Shipment.find(params[:id])
  end
end
