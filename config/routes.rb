Rails.application.routes.draw do
  resources :users, only: %i(create update) do
    resources :activities, only: %i(create)
    resources :foods, only: %i(create)
    resources :recipes, only: %i(index)
  end
end
