DavidAndMinsi::Application.routes.draw do
  resources :rsvps


  match ':controller/:action(/:id)'
  root :to => 'home#index'

  # mainly for generation of helpers
  resources :users
end
