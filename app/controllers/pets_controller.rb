class PetsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @pet = @user.pets.create(pet_params)
    redirect_to user_path(@user)
  end

  private
    def pet_params
      params.require(:pet).permit(:nombre, :edad, :sexo, :tipo, :alive)
    end
end
