class FoodsController < ApplicationController
  def create
    user = User.find_by!(username: params[:user_id])

    (params[:foods] || []).each do |food|
      record = user.foods.find_or_initialize_by(date: params[:date], nutrion: food[:nutrion])
      record.amount = food[:amount]
      return respond_with(record) unless record.save
    end

    respond_with(user, location: user_recipes_url(user))
  end
end
