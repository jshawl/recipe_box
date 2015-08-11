class RecipesController < ApplicationController

  def index
    if params[:search]
      @recipes = Recipe.search(params[:search]).order(created_at: :desc)
    else
    @recipes = Recipe.all.order(created_at: :desc)
    end
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
  # I recommend removing the :user_id from your strong params. In your create action, you are finding the
  # user based on session variables. You can do the same thing for update.
end

end
