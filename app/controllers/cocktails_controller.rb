class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(strong_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail.id)
    elsif
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private

  # TODO: Check this - I am not fully understand. Read
  def strong_params
    params.require(:cocktail).permit(:name)
  end

end
