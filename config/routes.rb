NewRails::Application.routes.draw do
  devise_for :users
  resource :home, :only => [:index, :show, :create], :controller => :home
  root :to => "home#index"
  match 'product/:id' => "home#show", :as => "product"
end
