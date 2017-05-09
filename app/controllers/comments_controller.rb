class CommentsController < ApplicationController
  def create
    @record = Record.find(params[:record_id])
    @comment = @record.comments.create(comment_params)
    redirect_to record_path(@record)
  end
 
 def destroy
    @record = Record.find(params[:record_id])
    @comment = @record.comments.find(params[:id])
    @comment.destroy
    redirect_to record_path(@record)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end