Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: %i[new create]
      # member do
      #   get :movie
      # end
  end
  resources :bookmarks, only: %i[destroy]
end
  # Defines the root path route ("/")
  # root "articles#index"
# end
