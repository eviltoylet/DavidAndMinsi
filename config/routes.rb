DavidAndMinsi::Application.routes.draw do
  match 'rsvp/edit' => 'rsvp#edit', :via => :get
  match 'rsvp/update' => 'rsvp#update', :via => :post
  match 'rsvp/show' => 'rsvp#show', :via => :get
  match 'rsvp/invalid' => 'rsvp#invalid', :via => :get

  match 'admin' => 'admin#index'
  match 'admin/delete' => 'admin#delete'
  match 'admin/add' => 'admin#add'

  root :to => 'home#index'
end
