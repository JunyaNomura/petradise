class RatingsController < ApplicationController

  def index
    # @ratings = policy_scope(current_user.ratings)
    @ratings = Rating.all
    @pets = Pet.all
  end


  def new
    # @ratings = policy_scope(current_user.ratings)
    @rating = Rating.new
    @pet = Pet.find(params[:pet_id])
  end

  def show
    set_rating
  end

    def create
    @rating = Rating.new(rating_params)
    @pet = Pet.find(params[:pet_id])
    @rating.user = @pet.user
    @rating.pet = @pet
    @pet = set_pet
    if @rating.save
      redirect_to my_page_path
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  def edit
  end

  def update
    if @rating.update(rating_params)
      redirect_to my_page_path
    else
      render 'users/my_page'
    end
  end

  def rating_params
    params.require(:rating).permit(:stars, :comments)
  end

  def set_rating
    @rating = Rating.find(params[:id])
    authorize @rating
  end

  def set_pet
    Pet.find(params[:pet_id])
  end
end
