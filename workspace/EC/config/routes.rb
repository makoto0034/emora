Rails.application.routes.draw do
  get 'contacts/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => {
  :registrations => 'users/registrations'
 }
  root to:'home#index'
  get 'home/index'
  post 'charges/update', to: 'charges#update'
  resources:products
  resources :carts
  resources :charges,only: %i(new create)
  resources :order_histories
  # resources :cart_items
  # resources :products, only: %i(show)do
  #   member do
  #     resources :charges, only: %i(new create)
  #   end
  # end

  resources :contacts,only: [:index]

  resources :products,only: %i(show)do
    member do
      resources :cart_items, only: %i(create destroy)
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
