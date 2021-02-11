Rails.application.routes.draw do
  root 'kanekalons#index'

  # TODO: limit kanekalons resourses
  resources :kanekalons
end
