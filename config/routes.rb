Rails.application.routes.draw do
  devise_for :users
  get 'subjects/index'
  get 'subjects/search'
  get 'subjects/search_result'
  get 'home/index'
  get 'users/:id/timetable' =>'users#timetable'
  root to:'home#index'
  resources :home

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
