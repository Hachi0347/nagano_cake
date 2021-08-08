Rails.application.routes.draw do
  devise_for :admin, controllers: {
    sessions:      'admin/sessions',
    passwords:     'admin/passwords',
    registrations: 'admin/registrations'
  }
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  scope module: :public do
    root 'homes#top'
    get 'homes/top'
    get 'homes/about'
    resources :items, only: [:show, :index]
    get 'customers', to: 'customers#show'
    get 'customers/edit', to: 'customers#edit'
    patch 'customers', to: 'customers#update'
    get 'customers/unsubscribe'
    patch 'customers/withdraw'
    resources :cart_items, only: [:index, :update, :destroy, :create]
    delete 'cart_items/destroy_all'
    resources :orders, only: [:new, :create, :index, :show]
    get 'customers/comfirm'
    get 'customers/complete'
    resources :address, only: [:index, :edit, :create, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    root 'homes#top'
    get 'homes/top'
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]
  end
end
