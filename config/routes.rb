Rails.application.routes.draw do
  root 'retro_items#index'

  resources :retro_items
end
