Rails.application.routes.draw do
  root 'kanekalons#index'
  get 'kanekalons/mixing', 'kanekalons#mixing'

  #TODO limit kanekalons resourses
  resources :kanekalons
end
