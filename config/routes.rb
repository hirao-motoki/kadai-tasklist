Rails.application.routes.draw do
  get 'sessions/new'
    root to: 'tasks#index'
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    get 'signup', to: 'users#new'
    resources :users, only: [:create]
    resources :tasks
    resources :tasklists, only: [:create, :destroy]
end
