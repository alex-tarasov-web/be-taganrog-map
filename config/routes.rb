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

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
end
