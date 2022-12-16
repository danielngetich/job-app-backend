class BlogsController < ApplicationController
    def index
        blogs = Blog.all
        render json: blogs, status: :ok
    end
    def show
        blog = Blog.find_by(id:params[:id])
        if blog
              render json: blog, status: :ok
          else
              render json: {error: "Blog not found"}, status: :not_found
           end
    end
end
