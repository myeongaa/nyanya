class CommentsController < ApplicationController
    def create
        comment = Comment.new
        comment.content = params[:input_comment]
        comment.bang_id = params[:bang_id]
        comment.user_id = current_user.id
        comment.save
        #redirect_to "/bang/#{params[:bang_id]}"
    end
    def destroy
        @comment = Comment.find
        @comment.destroy
        redirect_to "/bangs/show/"
        
    end
end
