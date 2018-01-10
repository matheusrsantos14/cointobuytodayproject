Rails.application.routes.draw do
    	

   	root to: "home#index"
  
	get 'user/dash'

	devise_for :users
	get 'home/index'

	get 'dash' => "user#dash"

	devise_scope :user do
		get "user_signup", to: "devise/registrations#new"
		get "user_login", to: "devise/sessions#new"
		get "user_logout", to: "devise/sessions#destroy"
	end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
