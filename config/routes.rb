Dfworldgen::Application.routes.draw do

  devise_for :users

  root :to => "parameter_sets#index"
  resources :parameter_sets do
    member do
      put :vote_up
      put :vote_down
    end
  end

  #resources :votes

end
