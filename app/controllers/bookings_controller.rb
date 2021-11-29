class BookingsController < ApplicationController

    # def home
    # if current_user.present?
    #   @bookings = Booking.includes(:sport_class).where(sport_classes: { coach_id: current_user.id }).where("start_at BETWEEN ? and ?", Date.current.beginning_of_day, Date.current.end_of_day)
    # end
  # end


  def update
    @booking = Booking.find(params[:id])
    if @booking.update(payment_received: params[:choice])
      redirect_to root_path, notice: "Bien mis à jour"
    else
      redirect_to root_path, notice: @booking.errors.messages
    end

  end
end
