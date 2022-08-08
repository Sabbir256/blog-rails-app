class BlogsController < ApplicationController
    def new
        @blog = Blog.new
    end

    def create
        # blog param = {:title => "test string", :body=>"demo"}
        @blog = Blog.new(blog_param)
        if @blog.save
            redirect_to "/", notice: "Successfully saved the blog!"
        else
            render :new
        end
    end

    private

    def blog_param
        params.require(:blog).permit(:title, :body)
    end
end