Luna::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  #  authenticated :admin do
  #    root :to => 'admin#index'
  #  end
  root :to => "home#index"
  devise_for :users

  resources :users, :only => [:show, :index]
  resources :pdfs

    match ':controller(/:action(/:id))(.:format)'
end
