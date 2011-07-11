NewRails::Application.routes.draw do
  devise_for :users
  resource :home, :only => [:index, :show, :create], :controller => :home
  root :to => "home#index"
  match 'product/:id' => "home#show", :as => "product"
  
  # resources :home, :only => [:index] do
  #   collection do
  #     get 'about', :as => "about"
  #     get 'faqs',  :as => "faq"
  #     get 'privacy', :as => "privacy"
  #     get 'terms_and_conditions', :as => "terms"
  #   end
  # end
  
  
  match 'about' => "home#about", :as => "about"
  match 'faqs' => "home#faqs", :as => "faq"
  match 'privacy' => "home#privacy", :as => "privacy"
  match 'promo_mechanics' => "home#promo_mechanics", :as => "promo"
  #match 'fb/:id' => "home#social"
  match 'terms_and_conditions' => "home#terms_and_conditions", :as => "terms"
  match 'registration' => "home#signup", :as => "registration"
  match 'registration_complete' => "home#signup_complete", :as => "registration_complete"
  
end