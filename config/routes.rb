Rails.application.routes.draw do
  root 'kanekalons#index', as: 'home'

  # TODO: limit kanekalons resourses
  resources :kanekalons
end
