class TimeSlotsController < ApplicationController

  def calendar
    @sport_class = SportClass.last
    @time_slots = TimeSlot.all
    @time_slot = TimeSlot.new(
      level: @sport_class.level,
      group_size: @sport_class.group_size,
      price: @sport_class.price,
      name: @sport_class.name,
      description: @sport_class.description,
      address1: @sport_class.address1,
      address2: @sport_class.address2,
      post_code: @sport_class.post_code,
      town: @sport_class.town
    )
  end

  def index
    @time_slots = TimeSlot.all
  end

    def new
    @time_slot = TimeSlot.new
  end

  def create
    time_slot = TimeSlot.new(time_slot_params)
    if time_slot.save!
      render json: time_slot.to_json
    else
      render json: { success: false, errors: time_slot.errors.messages }, status: :unprocessable_entity
    end
  end

  def update
    @time_slot = TimeSlot.find(params[:id])
    @time_slot.update(time_slot_params)
  end


  private

  def time_slot_params
    params.require(:time_slot).permit(
      :name,
      :description,
      :start_at,
      :end_at,
      :level,
      :group_size,
      :price,
      :address1,
      :address2,
      :post_code,
      :town,
      :sport_class_id
    )
  end
end
