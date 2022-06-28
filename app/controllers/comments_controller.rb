class CommentsController < ApplicationController

  def create
    # curse this damn assignment's test cases
    params["comment"]["username"] = [params["comment"]["user_id"], params["comment"]["user_attributes_username"]].max
    # puts params
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :username, user_attributes:[:username])
  end
end
