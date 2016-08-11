class CocktailsController < ApplicationController

  before_action :find_cocktail, only: [:show, :edit, :new, :create]

  def index
   @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new(:cocktail)
  end

  def create
    @cocktail = Cocktail.new
    @cocktail.save
    redirect_to
  end


private

  def find_cocktail
    @cocktail = Cocktail.find(:id)
  end

  def strong_params
    params.require(:cocktail).permit(:dose)
  end

end
