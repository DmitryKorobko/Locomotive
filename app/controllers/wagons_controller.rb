class WagonsController < ApplicationController
  before_action :set_wagon, only: [:show, :edit, :destroy, :update]

  def index
    @wagons = Wagon.all
  end

  def show
  end

  def new
    @wagon = Wagon.new
  end

  def create
    @wagon = Wagon.new(wagon_params)

    if @wagon.save
      redirect_to @wagon
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @wagon.update(wagon_params)
      redirect_to @wagon
    else
      render :edit
    end
  end

  def destroy
    @wagon.destroy
    redirect_to wagons_path
  end

  def set_wagon
    @wagon = Wagon.find(params[:id])
  end

  private

  def wagon_params
    params.require(:wagon).permit(:wagon_type, :plazz_top_places, :plazz_bottom_places, :coupe_top_places, :coupe_bottom_places)
  end
end