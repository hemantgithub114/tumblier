Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
   end
 
 resources :posts do 
 	resources :comments
 end
 root "posts#index"
 
 get '/about' , to:'pages#about'

end
