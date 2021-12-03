class BookingsController < ApplicationController

  def update
    @booking = Booking.find(params[:id])
    @booking.update(payment_received: params[:choice])

    @unpaid_ca = Booking.where(payment_received: false).select {|b| b.time_slot.sport_class.coach_id == current_user.id}.map(&:time_slot).sum(&:price)

    @unpaid_client = current_user.time_slots.map{|t| t.bookings.filter{|b| !b.payment_received }.map{ |b| b.client}}.flatten

    @client = @booking.client
    @bookings = @client.client_bookings.joins(time_slot: :sport_class).where(sport_classes: {coach_id: current_user.id}).order(start_at: :desc)
  end
end
