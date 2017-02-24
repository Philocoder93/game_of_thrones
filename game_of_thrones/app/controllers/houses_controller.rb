class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def create
    @new = House.create(house_params)
    redirect_to controller: 'houses', action: 'index'
  end

  def new
    @new = House.new
  end

  def edit
    @house = House.find(params[:id])
  end

  def show
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)
    redirect_to controller: 'houses', action: 'index'
  end

  def destroy
    @toss = House.find(params[:id])
    @toss.delete
    redirect_to controller: 'houses', action: 'index'
  end

  private
  def house_params
    params.require(:house).permit(:name, :img_url, :house_word)
  end
end
