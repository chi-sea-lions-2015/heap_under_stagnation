class CommentsController < ApplicationController
  def new
    @question = Question.find(params[:id])
    @question.comments.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:answer_id])

    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :content)
  end

end
