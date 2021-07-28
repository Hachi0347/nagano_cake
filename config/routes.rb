Rails.application.routes.draw do
  devise_for :admin
  devise_for :customers
  scope module: :public do
    root 'homes#top'
    get 'homes/top'
    get 'homes/about'
    resources :items, only: [:show, :index]
    resources :customers, only: [:show, :edit, :update]
    get 'customers/unsubscribe'
    patch 'customers/withdraw'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    root 'homes#top'
    get 'homes/top'
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
  end
end
