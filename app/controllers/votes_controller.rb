class VotesController < ApplicationController

  def voteup
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
      puts "DJKLFSJGLDKJLSDKSJLFSJLKSDJ"
      @question = Question.find(params[:question_id])
      @question.votes.find_or_create_by(user_id: @user.id, direction: 1)
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
