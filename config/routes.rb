Rails.application.routes.draw do
  devise_for :users
  get 'subjects/search'
  get 'subjects/search_result'
  get 'home/index'
  resources :subjects
  root to:'home#index'
  resources :users, only: %i(show)do
    member do
      resources :timetables, only: %i(index create new destroy)
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

  resources :message_boards, only: %i(index create new)do
    member do
      resources :message_boards_talks, only:%i(index create new )
    end
  end

  resources :message_boards_talks, only: %i()do
    member do
      resources :posts, only:%i(new create edit)
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
