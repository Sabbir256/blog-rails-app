class MainController < ApplicationController
    def index
        flash[:alert] = "This is an alert to test flash [built in hashmap, like cache] in ruby!"
        @blogs = Blog.all
    end
end