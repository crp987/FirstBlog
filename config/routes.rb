Rails.application.routes.draw do
  get 'sessions/create'

  devise_for :users
  get 'welcome/index'

  resources :docs
  authenticated :user do
  	root "docs#index", as: "authenticated_root"
  end

  root 'welcome#index'
end