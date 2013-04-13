DavidAndMinsi::Application.routes.draw do
  resources :user

  match 'user/:id/madlib' => 'user#madlib'

  match 'admin' => 'admin#index'
  match 'admin/delete' => 'admin#delete'
  match 'admin/add' => 'admin#add'

  root :to => 'home#index'
end
