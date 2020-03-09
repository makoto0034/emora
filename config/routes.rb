Rails.application.routes.draw do
  root to:'home#index'
  get 'subjects/search'
  get 'subjects/search_result'
  get 'home/index'
  post 'users/update'
  devise_for :users, :controllers => {
   :registrations => 'users/registrations'
 }
  resources :subjects
  resources :relationships,only: [:create, :destroy]
  resources :post_favorites,only: [:create,:destroy]
  resources :users, only: %i(show edit)do
    member do
      resources :timetables, only: %i(index create new destroy)
    end
  end
  resources :timetable, only: %i()do
    member do
      resources :timetable_cells,only: %i(index create new edit update destroy)
    end
  end

  resources :timetable_cells, only: %i()do
    member do
      resources :timetable_cell_contents, only:%i(create new edit)
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

  if Rails.env.development? #開発環境の場合
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
