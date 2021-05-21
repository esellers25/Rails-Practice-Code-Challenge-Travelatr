class PostsController < ApplicationController

    def show
        @post = Post.find(params[:id])
        @blogger = @post.blogger 
        @destination = @post.destination
    end 
end 