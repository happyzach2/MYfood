Rails.application.routes.draw do
  root to: "pages#index"
  get 'pages/index'

  get 'pages/home'
  
  resources :meal_plans
  resources :week_days
  resources :ingredients
  resources :meals
  resources :user_meals
  resources :week_day_meals
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
