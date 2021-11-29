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

  def show
    @client = Client.find(params[:id])
    authorize @client
    @booking = booking.new
    @bookings = @client.bookings
  end
end
