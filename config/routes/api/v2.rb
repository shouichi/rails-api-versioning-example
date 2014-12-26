Api::V2::Engine.routes.draw do
  resources :users, only: [:index]

  mount Api::V1::Engine, at: '/'
end
