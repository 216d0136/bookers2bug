Rails.application.routes.draw do

  devise_for :users
  get 'home/about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books, only:[:new,:create,:index,:show,:edit] do
  	resources :book_comments, only: [:create, :destroy]
  	resource :favorites, only: [:create, :destroy]
  	resources :relationships, only: [:create, :destroy]
  end

  root to: 'home#top'

end