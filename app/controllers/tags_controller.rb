class TagsController < ApplicationController

    def index
        @tags = Tag.all
      end

    def show
        @tag = Tag.find(params[:id])
      end

    def destroy
      @tag = Tag.find(params[:id])
      @tag.destroy
      flash.notice = "Tags'#{@tag.name}' is Deleted!"
      redirect_to (@tag)
      end
      
end
