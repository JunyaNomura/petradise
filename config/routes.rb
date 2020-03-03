Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pets do
    resources :ratings, only: [:new, :create]
  end
  resources :matches, only: [:index, :show]
  get 'my_page', to: 'users#my_page', as: :my_page
end
