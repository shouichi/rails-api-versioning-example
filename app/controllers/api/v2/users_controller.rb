module Api
  module V2
    class UsersController < ApplicationController
      def index
        @users = User.page(params[:page])
      end
    end
  end
end
