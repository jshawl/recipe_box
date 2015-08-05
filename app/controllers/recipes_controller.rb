class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end
  def show
    @recipe = Recipe.find(params[:id])
  end
  def new
    @recipe = Recipe.new
  end
  def create
    @user = User.find(session[:user]["id"])
    @recipe = @user.recipes.create!(recipe_params)
    redirect_to recipe_path(@recipe)
  end
  def edit
    @recipe = Recipe.find(params[:id])
  end
  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end
private
def recipe_params
  params.require(:recipe).permit(:title, :directions, :ingredients, :photo_url, :user_id, :notes)
end

end
