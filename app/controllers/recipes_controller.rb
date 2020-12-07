class RecipesController < ApplicationController
  def index
    user = User.find_by!(username: params[:user_id])

    foods = user.foods.where(date: params[:date]).pluck(:nutrion, :amount).to_h
    activities = user.activities.where(date: params[:date]).pluck(:nutrion, :amount).to_h

    recipe = Food.nutrions.keys.map do |nutrion|
      [nutrion, 10 - (foods.fetch(nutrion, 0) - activities.fetch(nutrion, 0))]
    end.to_h

    respond_with(recipe, location: user_recipes_url(user))
  end
end
