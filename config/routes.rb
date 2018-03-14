Rails.application.routes.draw do

  get '/api/comments/:id', to: 'api/comments#index'

  namespace :api do
    resources :posts
    resources :comments
  end

  #Do not place any routes below this one
  get '*other', to: 'static#index'
end
