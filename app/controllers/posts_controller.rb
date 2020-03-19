class PostsController < ApplicationController
    def index
        @posts =  Post.all
    end

    def show
        @post = Post.find(params[:id])
        @blogger = @post.blogger
        @destination = @post.destination
        
    end
end
