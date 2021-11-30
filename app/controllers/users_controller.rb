class UsersController < ApplicationController

  def user_profile
    @user = current_user
    authorize @user
    @sport_classes = Sport_class.all
  end

  def user_clients
    @user = current_user

    @clients = current_user.clients

  end

  def client_profile
    @client = User.find(params[:id])
    # @booking = booking.new
    # @bookings = @client.client_bookings.select { |b| b.time_slot.sport_class.coach == current_user }

    # ap @bookings
  end
end
