class BookingsController < ApplicationController

  def update
    @booking = Booking.find(params[:id])
    @booking.update(payment_received: params[:choice])

    @unpaid_ca = current_user.time_slots.map{|t| t.bookings.filter{|b| !b.payment_received }.map{ |b| b.time_slot_price}.sum }.sum
    @unpaid_client = current_user.time_slots.map{|t| t.bookings.filter{|b| !b.payment_received }.map{ |b| b.client}}.flatten

    @client = @booking.client
    @bookings = @client.client_bookings.select { |b| b.time_slot.sport_class.coach == current_user }.sort_by { |booking| booking.time_slot.start_at }
  end
end
