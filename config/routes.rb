Dfworldgen::Application.routes.draw do

  devise_for :users

  root :to => "parameter_sets#index"
  resources :parameter_sets

  put 'vote_up', to: 'parameter_sets#vote_up'
  put 'vote_down', to: 'parameter_sets#vote_down'

end
