Rails.application.routes.draw do
  root 'users#home'
  get 'users/index'
  get 'users/edit'
  get 'users/show'
  get 'users/home'
  get 'users/home'
  get 'users/index'
  get 'users/edit'
  get 'users/show'
  get 'books/show'
  get 'books/index'
  get 'books/new'
  get 'books/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
