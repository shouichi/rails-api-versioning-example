module Api
  module V1
    class Engine < Rails::Engine
      isolate_namespace V1
    end
  end
end
