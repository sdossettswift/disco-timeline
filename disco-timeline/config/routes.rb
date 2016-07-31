Rails.application.routes.draw do
root 'timeline#index'

#users
  get 'register' => 'users#new', as: :new_user
  post 'users' => 'users#create', as: :create_user
  get 'users' => 'users#index', as: :users
  get 'users/:id' => 'users#show_profile', as: :user

  get 'api/me' => 'api/me#me', as: :me

#Sessions
  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete', as: :end_session
  get 'sign_out' => 'sessions#delete', as: :sign_out

  #events
    post 'events' => 'events#create'
    get 'events/new' => 'events#new', as: :new_event
    get 'events/:id' => 'events#show', as: :event
    get 'events/:id/edit' => 'events#edit', as: :edit_event
    delete 'events/:id' => 'events#delete'
    patch 'events/:id' => 'events#update'

#api_events

  get 'api/events/new' => 'api/events#new'
  post 'api/events' => 'api/events#create'
  get 'api/events' => 'api/events#index'
  get 'api/events/:id' => 'api/events#show'
  patch 'api/events/:id' => 'api/events#update'
  put 'api/events/:id' => 'api/events#update'
  delete 'api/events/:id' => 'api/events#delete'



end
