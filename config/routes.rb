Rails.application.routes.draw do
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :strains do
    resources :effects, :flavors, :ratings
  end

  resources :users, only: [:create] 

  post 'authenticate', to: 'authentication#authenticate'

end
