Rails.application.routes.draw do
  root 'propertys#index'
  # resources :propertys, only: [:index,:new,:show,:destroy,:edit]
  resources :propertys
end
