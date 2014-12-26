Api::Engine.routes.draw do
  mount Api::V2::Engine, at: '/v2'

  mount Api::V1::Engine, at: '/v1'
end
