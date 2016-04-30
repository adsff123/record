class HomeController < ApplicationController
    def index
        
    end
    def write
        @title = params[:title]
        @content = params[:content]
        @receiver = params[:receiver]
        @sender = params[:sender]
        
        new_post = Post.new
        new_post.title = @title
        new_post.content = @content
        new_post.receiver = @receiver
        new_post.sender = @sender
        new_post.save
        
        redirect_to '/list'
    end
    def list
        @every_post = Post.all.order("id desc")
        
    end
end
