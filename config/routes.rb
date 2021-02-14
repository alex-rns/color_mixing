Rails.application.routes.draw do
  root 'kanekalons#index', as: 'home'

  resources :kanekalons, only: [:index, :show] do
    get "search", on: :collection
  end
end
