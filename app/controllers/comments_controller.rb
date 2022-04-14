class CommentsController < ApplicationController
  def create
    require 'pry'
    # binding.pry
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to comment_url(@comment), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :show, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def comment_params
    #params.require(:user).permit(:post_id, :body)
    x = params.permit([:user_id, :post_id, :body])
    puts x.inspect
    return x
  end
end
