class SportClassesController < ApplicationController

# skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  @sport_classes = current_user.sport_classes
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
    # if @sport_class.booking.any?
    #   flash[:alert] = "Ce cours a déjà été réservé et ne peut donc pas être supprimée"
    # else
      @sport_class.destroy
    # end

    redirect_to sport_class_path
  end

  private

  def sport_class_params
    params.require(:sport_class).permit(:name, :description, :category, :coach_id)
  end

end
