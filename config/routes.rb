Dfworldgen::Application.routes.draw do

  devise_for :users

  root :to => 'parameter_sets#index'
  resources :parameter_sets

  get 'parameter_sets/show_tags/:id', to: 'parameter_sets#show_tags'

  put 'vote_up', to: 'users#vote_up'
  put 'vote_down', to: 'users#vote_down'

end
