class BookingsController < ApplicationController

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(payment_received: params[:choice])
      redirect_to client_profile_path(@booking.client_id), notice: "Bien mis à jour" if params[:redirect] == "client"
      redirect_to root_path, notice: "Bien mis à jour" if params[:redirect] != "client"
    else
      redirect_to client_profile_path(@booking.client_id), notice: @booking.errors.messages if params[:redirect] == "client"
      redirect_to root_path, notice: @booking.errors.messages if params[:redirect] != "client"
    end
  end

end
