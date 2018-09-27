class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find_by(id: params[:id])
  end

  def new
    @ingredient = Ingredient.new
    @cocktail_options = Cocktail.all.map do |c|
      [c.name, c.id]
    end
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    flash_errors(@ingredient, 'new')
  end

  def edit
    @ingredient = Ingredient.find_by(id: params[:id])
  end

  def update
    @ingredient = Ingredient.find_by(id: params[:id])
    @ingredient.update(ingredient_params)
    flash_errors(@ingredient, 'edit')
  end

  def destroy
    @ingredient = Ingredient.find_by(id: params[:id])
    @ingredient.destroy
    redirect_to ingredients_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :cocktail_id, :quantity)
  end

  def flash_errors(ingredient, action)
    if ingredient.valid?
      redirect_to ingredient
    else
      flash[:errors] = ingredient.errors.full_messages
      if action == 'new'
        redirect_to new_ingredient_path(ingredient)
      else
        redirect_to edit_ingredient_path(ingredient)
      end
    end
  end
end
