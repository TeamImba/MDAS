NewRails::Application.routes.draw do
  devise_for :users
  resource :home, :only => [:index, :show, :create], :controller => :home
  root :to => "home#index"
  match 'product/:id' => "home#show", :as => "product"
  match 'about' => "home#about", :as => "about"
  match 'faqs' => "home#faqs", :as => "faq"  
end
