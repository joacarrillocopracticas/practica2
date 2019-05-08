Rails.application.routes.draw do
  get 'authors/index'
  get 'author/index'
  resources :authors do
    resources :books
  end
  
  namespace :admin do
    resources :stats
  end
end
