Rails.application.routes.draw do
  get 'notes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	root to: 'notes#index'

	resources :notes, :only => [:index, :create, :edit, :update, :destroy]
end
