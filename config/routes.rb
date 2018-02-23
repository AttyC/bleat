Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :restaurants do
    resources :reviews, only: [:create, :new, :edit, :update, :destroy]
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
