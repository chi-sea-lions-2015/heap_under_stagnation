class QuestionsController < ApplicationController

  def new
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
      @question = @user.questions.new
    else
      redirect_to "/login"
    end
  end

  def create
    @user = User.find_by(id: session[:user_id])
    @question = @user.questions.new(question_params)
    if @question.save
      redirect_to "/questions"
    else
      render :new
    end
  end

  def index
    session[:current_url] = questions_path
    @user = User.find_by(id: session[:user_id])
    @questions = Question.all
  end

  def show
    @user = User.find_by(id: session[:user_id])
    @question = Question.find(params[:id])
    session[:current_url] = question_path(@question)
  end

  def edit
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
      @question = Question.find(params[:id])
    else
      redirect_to "/login"
    end
  end

  def update
    @user = User.find_by(id: session[:user_id])
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to question_path
  end

  def destroy
      @user = User.find_by(id: session[:user_id])
      @question = Question.find(params[:id])
      @question.destroy
      redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:title, :content)
  end

end
