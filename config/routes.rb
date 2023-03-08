Rails.application.routes.draw do
  get 'items/index'
  get 'items/index'
  devise_for :users
  get 'items/index'
  root to: "items#index"
end
