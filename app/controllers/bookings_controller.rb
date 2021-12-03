class BookingsController < ApplicationController

  def update
    @booking = Booking.find(params[:id])
    @booking.update(payment_received: params[:choice])
  end
end
