Rails.application.routes.draw do
  get 'studies/index'
  root to: "studies#index"
end
