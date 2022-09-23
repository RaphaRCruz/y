class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.where(adoption: false)
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to root_path, notice: 'Add sucess!'
    else
      redirect_to new_pet_path, alert: 'Invalid Pet'
    end
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    if @pet.update(pet_params)
      redirect_to root_path, notice: 'Update sucess!'
    else
      redirect_to edit_pet_path, alert: 'Invalid Pet!'
    end
  end

  def destroy
    @pet.destroy
    redirect_to root_path
  end

  def adopted
    @pets = Pet.where(adoption: true)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :category, :birth, :adoption)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
