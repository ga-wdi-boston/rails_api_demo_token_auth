module Api
  module V1
    class PostsController < ApplicationController
      before_filter :authenticate, only: [:index]
      def index
        @posts = [{title: 'wat'}, {title: 'yea'}, {title: 'ok'}]
        render json: @posts
      end
    end
  end
end
