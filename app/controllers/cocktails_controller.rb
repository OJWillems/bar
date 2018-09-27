class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find_by(id: params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    # byebug
    @cocktail = Cocktail.create(cocktail_params)
    if @cocktail.valid?
      redirect_to cocktail_path(@cocktail)
    else
      flash[:errors] = @cocktail.errors.full_messages
      redirect_to new_cocktail_path
    end
  end

  def edit
    @cocktail = Cocktail.find_by(id: params[:id])
  end

  def update
    @cocktail = Cocktail.find_by(id: params[:id])
    @cocktail.update(cocktail_params)
    if @cocktail.valid?
      redirect_to cocktail_path(@cocktail)
    else
      flash[:errors] = @cocktail.errors.full_messages
      redirect_to edit_cocktail_path(@cocktail)
    end
  end

  def destroy
    @cocktail = Cocktail.find_by(id: params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :seasonality, :price)
  end
end
