class CommentsController < ApplicationController

 def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to topic_path(@topic)
  end

def destroy
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.find(params[:id])
    @comment.destroy
    redirect_to topic_path(@topic)
  end

end
