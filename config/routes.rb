Rails.application.routes.draw do
  get 'doses/create'
  get 'doses/new'
  get 'doses/delete'
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:create, :new, :delete]
  end
end
