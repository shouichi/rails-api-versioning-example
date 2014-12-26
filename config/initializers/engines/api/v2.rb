module Api
  module V2
    class Engine < Rails::Engine
      isolate_namespace V2
    end
  end
end
