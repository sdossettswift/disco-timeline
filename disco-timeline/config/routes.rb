Rails.application.routes.draw do
root 'timeline#index'

#users
  get 'register' => 'users#new', as: :new_user
  post 'users' => 'users#create', as: :create_user
  get 'users' => 'users#index', as: :users
  get 'users/:id' => 'users#show_profile', as: :user

#Sessions
  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete', as: :end_session
  get 'sign_out' => 'sessions#delete', as: :sign_out



end
