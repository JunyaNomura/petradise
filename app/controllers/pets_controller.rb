class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :delete]
  #respond_to :html
  #respond_to :js

  def index
      @pets = Pet.where.not(user: current_user.excluded_friends, id: current_user.pet).order('name ASC').limit(1)
    # byebug
    # @pets = Pet.where.not(user: current_user.excluded_friends, id: current_user.pet).first(5)
    # @pets = Pet.all
    # respond_with(@pets)
  end

  def show
    #     @rating.user = @pet.user
    # @rating.pet = @pet
    # pet_first_personality(current_user.pet.personality_list)
    # pet_second_personality(current_user.pet.personality_list)
    # pet_first_preference(current_user.pet.preference_list)
    # pet_second_preference(current_user.pet.preference_list)
  end
  # @related_pets = @pet.find_related_personalities

  def new
    @pet = Pet.new
    # @user = User.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to my_page_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to my_page_path
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
    params.require(:pet).permit(:name, :gender, :age, :breed, :description, photos: [], preference_list: [], personality_list: [] )
  end

end
