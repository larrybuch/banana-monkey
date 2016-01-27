Rails.application.routes.draw do
  root 'home#index'
  resources :posts, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :posts, only: [:create]
    end
  end
end
