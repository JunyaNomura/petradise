Rails.application.routes.draw do
  get 'messages/create'
  get 'chat_rooms/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pets do
    resources :ratings, only: [:new, :create]
  end
  resources :matches, only: [:index, :show]

  resources :chat_rooms, only: [:show] do
    resources :messages, only: [:create]
  end

  get 'my_page', to: 'users#my_page', as: :my_page
  get 'friends', to: 'users#friends', as: :friends
  get 'chats', to: 'users#chats', as: :chats
  get 'map', to: 'users#map', as: :map
  get 'users/:id/request', to: 'users#friend_request', as: :request
  get 'users/:id/accept', to: 'users#friend_accept', as: :accept
  get 'users/:id/reject', to: 'users#friend_reject', as: :reject
  get 'users/:id/accept_show', to: 'users#friend_accept_show', as: :accept_show
  # post 'chat_rooms/:chat_room_id/messages', to: 'messages#create', as: :chat_room_messages
  # get 'chat_rooms/:id', to: 'chat_rooms#show', as: :chat_room

  get 'users/:id/remove', to: 'users#friend_remove', as: :remove

  mount ActionCable.server => "/cable"

  resources :collections do
    member do
      delete :delete_image_attachment
    end
  end
end
