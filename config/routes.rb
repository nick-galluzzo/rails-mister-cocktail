Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :create, :new]
end
