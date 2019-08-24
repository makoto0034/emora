Rails.application.routes.draw do
  devise_for :users
  get 'subjects/search'
  get 'subjects/search_result'
  get 'home/index'
  resources :subjects
  root to:'home#index'
  resources :users, only: %i()do
    member do
      resources :timetables, only: %i(index create new)
    end
  end
  resources :timetable, only: %i()do
    member do
      resources :timetable_cells, only:%i(index create new)
    end
  end

  resources :timetable_cells, only: %i()do
    member do
      resources :timetable_cell_contents, only:%i(index create new)
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
