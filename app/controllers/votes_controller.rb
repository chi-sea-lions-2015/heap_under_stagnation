class VotesController < ApplicationController


  def voteup
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
      @question = Question.find(params[:question_id])
      @question.votes.create(user_id: @user.id, direction: 1)
    if request.xhr?
      render :partial => 'votes/vote_div', layout: false, locals: { question: @question }
    end
    else
      redirect_to "/login"
    end
  end


  private
  def vote_params
    params.require(:vote).permit(:direction, :user_id)
  end
end