Rails.application.routes.draw do
 	resources :localities
   root 'localities#index'
 
 end
