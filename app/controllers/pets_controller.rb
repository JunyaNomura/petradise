class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :delete]
  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to pets_path
    else
      render :edit
    end
  end

  def delete
    @pet.delete
    redirect_to pets_path
  end


  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :gender, :age, :breed, :description, :photo)
  end
end
