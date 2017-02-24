class CharactersController < ApplicationController
  def index
  end

  def create
    @new_character = Character.create(character_params.merge({:house_id => params[:house_id].to_i}))
    redirect_to "/houses/#{params[:house_id]}"
  end

  def new
    @house = House.find(params[:house_id])
    @new_character = Character.new
  end

  def edit
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
  end

  def show
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to "/houses/#{params[:house_id]}"
  end

  def destroy
    @toss = Character.find(params[:id])
    @toss.delete
    redirect_to "/houses/#{params[:house_id]}"
  end
  private
  def character_params
    params.require(:character).permit(:name, :img_url)
  end
end
