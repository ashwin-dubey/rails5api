module V1
  class BlogsController < ApplicationController
    before_action :set_blog, only: [:show, :update, :destroy]

    # GET /blogs
    def index
      @blogs = current_user.blogs.paginate(page: params[:page], per_page: 20)
      json_response(@blogs)
    end

    # POST /blogs
    def create
      @blog = current_user.blogs.create!(blog_params)
      json_response(@blog, :created)
    end

    # GET /blogs/:id
    def show
      json_response(@blog)
    end

    # PUT /blogs/:id
    def update
      @blog.update(blog_params)
      head :no_content
    end

    # DELETE /blogs/:id
    def destroy
      @blog.destroy
      head :no_content
    end

    private

    def blog_params
      # whitelist params
      params.permit(:title, :description, :created_by)
    end

    def set_blog
      @blog = Blog.find(params[:id])
    end
  end
end
