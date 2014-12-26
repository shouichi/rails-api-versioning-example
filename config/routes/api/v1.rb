Api::V1::Engine.routes.draw do
  resources :users, only: [:index, :show, :create, :update, :destroy]
end
