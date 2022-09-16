class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(params[:pet])
    @pet.save
    redirect_to root_path
  end

  def edit
  end

  def update
    @pet.update(params[:pet])
    redirect_to pet_path
  end

  def destroy
    @pet.destroy
    redirect_to root_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :category, :birth, :adoption)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
