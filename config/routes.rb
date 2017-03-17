Rails.application.routes.draw do
  resources :doses, only: [:destroy]
  # we put destroy here to simplify the path


  resources :cocktails, only: [:index, :show, :create, :new] do
  resources :doses, only: [:new, :create]
  end
  mount Attachinary::Engine => "/attachinary"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

