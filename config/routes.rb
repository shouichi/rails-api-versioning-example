Rails.application.routes.draw do
  mount Api::Engine, at: '/api'
end
