class HousesController < ApplicationController
  before_action :set_house, only: [:show, :destroy, :update, :edit]

  def index
    @houses = House.all
  end
  def show
  end
  def edit
  end
  def update
    @house.update(house_params)
    if @house.save
      flash[:notice] = "House was created"
      redirect_to @house
    else
      render :edit
    end
  end
  def new
    @house = House.new
  end
  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to @house, notice: "House created"
    else
      render :new
    end
  end
  def destroy
    @house.destroy
    redirect_to houses_path
  end
  private
  def house_params
    params.require(:house).permit(:name, :sigil_url)
  end
  def set_house
    @house = House.find(params[:id])
  end

end
