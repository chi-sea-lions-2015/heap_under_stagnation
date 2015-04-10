class AnswersController < ApplicationController

  def create
    @user = User.find_by(id: session[:user_id])
    if @user
      @question = Question.find(params[:question_id])
      @answer = @question.answers.new(answer_params)
      @answer.user_id = @user.id
      @answer.save
      redirect_to question_path(@question)
    else
      redirect_to '/login'
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:content)
  end
end
