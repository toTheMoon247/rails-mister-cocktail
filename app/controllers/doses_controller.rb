class DosesController < ApplicationController

  # New Action
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end
  # Create Action
  def create
    @dose = Dose.new(strong_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  # Delete Action
  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  # TODO: Check this - I am not fully understand. Read
  def strong_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
