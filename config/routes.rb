Rails.application.routes.draw do
  resources :singles
  resources :discovery_audios
  resources :discovery_videos
  resources :media

  resources :industries do
    get :media, on: :member
  end

  resources :museums do
    get :media, on: :member
  end

  resources :albums do
    get :media, on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
