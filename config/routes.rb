WorkoutRoutine::Application.routes.draw do

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :welcome, only: [:index]

  root to: "welcome#index"
	end

Rails.application.routes.draw do
	get 'welcome/index'
 	resources :records do
 		resources :comments
 	end
 	root 'welcome#index'
end

