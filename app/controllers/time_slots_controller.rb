class TimeSlotsController < ApplicationController
  before_action :set_time_slot, only: [:edit, :update, :update_times]


  def calendar
    # @time_slots = TimeSlot.all
    @sport_class = SportClass.last
    # @time_slot = TimeSlot.new(
    #   level: @sport_class.level,
    #   group_size: @sport_class.group_size,
    #   price: @sport_class.price,
    #   name: @sport_class.name,
    #   description: @sport_class.description,
    #   address1: @sport_class.address1,
    #   address2: @sport_class.address2,
    #   post_code: @sport_class.post_code,
    #   town: @sport_class.town
    # )


    @time_slot = TimeSlot.last

    @sport_classes = current_user.sport_classes

    @db_events = current_user.time_slots.map do |event|
      {
        id: event.id,
        description: event.description,
        level: event.level,
        price: event.price,
        groupe_size: event.group_size,
        title: "#{event.name} - #{event.bookings.size}/#{event.group_size}",
        start: event.start_at.strftime('%FT%T%:z'),
        end: event.end_at.strftime('%FT%T%:z')
      }
    end
  end

  def show
    @time_slot = TimeSlot.find(params[:id])
    render json: @time_slot.to_json(:except => [:start_at, :end_at, :created_at, :updated_at, :sport_class_id])
  end

  def index
    @time_slots = TimeSlot.all
  end

  def new
    @time_slot = TimeSlot.new
  end

  def edit
    render json: {form: render_to_string(partial: "modal_body_edit", locals: { time_slot: @time_slot }, formats: [:html])}
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
    redirect_to calendar_path
    # head 200
  end


  def update_times
    @time_slot = TimeSlot.find(params[:id])
    @time_slot.update(time_slot_params)
    head 200
  end

  def destroy
    @time_slot = TimeSlot.find(params[:id])
    if @time_slot.bookings.count.positive?
      # mettre une alerte
    else
      @time_slot.destroy
    end

  end

  private

  def set_time_slot
    @time_slot = TimeSlot.find(params[:id])
  end

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
