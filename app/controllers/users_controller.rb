class UsersController < ApplicationController

  def user_profile
    @user = current_user
    authorize @user
    @sport_classes = Sport_class.all
  end

  def user_clients
    @user = current_user
    @clients = current_user.clients.order(last_name: :asc)
  end

  def client_profile
    @client = User.find(params[:id])
    @bookings = @client.client_bookings.joins(time_slot: :sport_class).where(sport_classes: {coach_id: current_user.id}).order(start_at: :desc)
  end
end
