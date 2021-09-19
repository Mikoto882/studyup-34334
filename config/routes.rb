Rails.application.routes.draw do
  devise_for :users
  get 'studies/index'
  root to: "studies#index"
end
