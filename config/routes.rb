Rails.application.routes.draw do
  root to: 'subjects#index'
  resources :subjects
end
