class CommentsController < ApplicationController

    def create 
        @comment = @commentable.comments.new(comment_params)
        @comment.save
        redirect_to  @commentable, notice: "Comment added succesfully "

    end


    private
    
    def comment_params
        params.require(:comment).permit(:body, :commentable_id)
    end
end