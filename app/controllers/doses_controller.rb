class DosesController < ApplicationController
  before_action :set_cocktail, only: [ :new, :create ]

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    #@ingredient = Ingredient.find(params[:dose][:ingredient])
    #@ingredient = Ingredient.new(dose: @dose, cocktail: @cocktail)

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'  # will render show.html.erb at gardens view folder
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
