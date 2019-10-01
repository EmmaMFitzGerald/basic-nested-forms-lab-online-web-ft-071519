class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    params[:n] = 1 unless params[:n]
    params[:n].to_i.times do
      @ingredient = @recipe.ingredients.build
    end 
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
    redirect_to @recipe
    else 
      render :new
    end 
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    redirect_to recipe
  end


  private 
    def recipe_params
      params.require(:recipe).permit(
        :title,
        ingredients_attributes: [
        :id, :name, :quantity
        ]
      )
    end
end
