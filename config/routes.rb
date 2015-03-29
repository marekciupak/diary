Rails.application.routes.draw do
  devise_for :users
  root to: 'subjects#index'
  resources :subjects
  resources :divisions
  resources :grades
end
