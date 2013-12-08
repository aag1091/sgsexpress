class ShipmentsController < ApplicationController

  def tracking
    @shipment = Shipment.new
  end

  def create
    @retrieved_shipment = Shipment.find_by(tracking_id: params[:shipment][:tracking_id].upcase)
    @shipment = Shipment.new
    render 'tracking'
  end

end
