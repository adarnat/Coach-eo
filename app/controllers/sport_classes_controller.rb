class SportClassesController < ApplicationController

# skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  @sport_class = Sport_class.all
  end

  def show
    @sport_class = Sport_class.find(params[:id])
    # authorize @plush
  end

  def new
    @sport_class = Sport_class.new
    # authorize @Sport_class
  end

  def create
  @sport_class = Sport_class.new(sport_class_params)
  # authorize @Sport_class
  @sport_class.client_id = current_user.id
    if @sport_class.save
      redirect_to @home
    else
      render :new
    end
  end

  def destroy
    @sport_class = Sport_class.find(params[:id])
    # authorize @Sport_class
      @sport_class.destroy

    redirect_to sport_class_path
  end

  private

  def sport_class_params
    params.require(:sport_class).permit(:name, :description, :category, :coach)
  end

end
