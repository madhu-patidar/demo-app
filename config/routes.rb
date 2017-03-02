Rails.application.routes.draw do

  resources :articals do
  	get 'welcome', on: :member
  	get 'users', on: :collection
  end


  root 'articals#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
