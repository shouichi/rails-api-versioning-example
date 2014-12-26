module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :update, :destroy]
      def index
        @users = User.all
      end

      def show
      end

      def create
        @user = User.create(user_params)
        render json: { errors: @user.errors }, status: 422 unless @user.valid?
      end

      def update
        @user.update_attributes(user_params)
        render json: { errors: @user.errors }, status: 422 unless @user.valid?
      end

      def destroy
        @user.destroy
        render json: nil, status: 204
      end

      private

      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.permit(:name)
      end
    end
  end
end
