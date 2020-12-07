class ActivitiesController < ApplicationController
  def create
    user = User.find_by!(username: params[:user_id])

    (params[:activities] || []).each do |activity|
      record = user.activities.find_or_initialize_by(date: params[:date], nutrion: activity[:nutrion])
      record.amount = activity[:amount]
      return respond_with(record) unless record.save
    end

    respond_with(user, location: user_recipes_url(user))
  end
end
