Rails.application.routes.draw do
  get 'users/facebook'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
 	  #delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end
 
  resources :restaurants do
 	 resources :reviews
  end
 
  get 'restaurants' => 'restaurants#index'
end
