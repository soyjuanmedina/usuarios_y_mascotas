class PetsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @pets = @user.pets.all
  end

  def show
    @user = User.find(params[:user_id])
    @pet = @user.pets.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @pet = @user.pet.new
  end

  def edit
    @user = User.find(params[:user_id])
    @pets = @user.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @pet = @user.pets.create(pet_params)
    redirect_to user_path(@user)
  end

  def update
    @user = User.find(params[:user_id])
    @pet = @user.pets.find(pet_params)

    if @pet.update(user_params)
      redirect_to @pet
    else
      render 'edit'
    end
  end

  private
    def pet_params
      params.require(:pet).permit(:nombre, :edad, :sexo, :tipo, :alive)
    end
end
