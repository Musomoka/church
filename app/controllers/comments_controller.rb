class CommentsController < ApplicationController

    def create 
        @commentable = Sermon.find(params[:sermon_id])
        @comment = @commentable.comments.build(comment_params)
        @comment.user_id = current_user.id
        if @comment.save
         redirect_to  @commentable
         flash[:success] = "Commented added succesfully"
        else
            flash[:warning] = "Please enter a valid comment"
        end
    end

   


    private
   
    def comment_params
        params.require(:comment).permit(:body, :commentable_id,:user_id)
    end
end