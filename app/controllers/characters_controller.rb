class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :destroy, :update, :edit]

  def index
    @characters = Character.all
  end
  def show
  end
  def edit
  end
  def update
    @character.update(character_params)
    if @character.save
      flash[:notice] = "Character was created"
      redirect_to @character
    else
      render :edit
    end
  end
  def new
    @character = Character.new
  end
  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to @character, notice: "Character created"
    else
      render :new
    end
  end
  def destroy
    @character.destroy
    redirect_to characters_path
  end
  private
  def character_params
    params.require(:character).permit(:name, :photo_url, :status, :house_id)
  end
  def set_character
    @character = Character.find(params[:id])
  end

end
