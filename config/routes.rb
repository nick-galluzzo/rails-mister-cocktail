Rails.application.routes.draw do

  get 'reviews/create'
  get 'reviews/new'
  get 'reviews/destroy'
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :create, :new, :destroy] do
    resources :doses, only: [:create, :new]
    resources :reviews, only: [:create, :new]
  end

  resources :reviews, only: [:destroy]
  resources :doses, only: [:destroy]
end
