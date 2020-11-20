class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [ :show, :destroy ]

  def index
    @cocktails = Cocktail.all
    #how to find an image here
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    #try and include the ingredients
    #@ingredients = Ingredient.where(id: params[:dose][:ingredient])
    #ingredients.each do |ingredient|
      #dose = Dose.new(ingredient: ingredient, cocktail: @cocktail)
      #dose.save
    #end
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail, notice: 'Great success!'
    else
      render :new
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_url, notice: 'Cocktail was deleted'
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
