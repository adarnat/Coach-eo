class SportClassesController < ApplicationController

# skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  @sport_classes = current_user.sport_classes.order(category: :asc)
  end

  def show
  @sport_class = current_user.sport_classes.find_by_id(params[:id])

   if @sport_class
    else
      redirect_to sport_classes_path
    end
  end

  def new
    @sport_class = SportClass.new
  end

  def create
  @sport_class = SportClass.new(sport_class_params)
    if @sport_class.save
      redirect_to sport_classes_path
    else
      render :new
    end
  end

  def edit
    @sport_class = SportClass.find(params[:id])
  end

  def update
    @sport_class = SportClass.find(params[:id])
    @sport_class.update(sport_class_params)
    redirect_to sport_classes_path
  end

  def destroy
    @sport_class = SportClass.find(params[:id])
    if @sport_class.time_slots.any?
      flash[:alert] = "Ce cours a été réservé. Il ne peut donc pas être supprimé."
    else
      @sport_class.destroy
    end
      redirect_to sport_classes_path
  end

  private

  def sport_class_params
    params.require(:sport_class).permit(:name, :description, :category, :coach_id, :level, :group_size, :price, :duration, :address1, :address2, :post_code, :town)
  end

end
