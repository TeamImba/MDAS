NewRails::Application.routes.draw do
  devise_for :users
  root :to => "home#index"
  
  match 'product/:id' => "home#show", :as => "product"
end
