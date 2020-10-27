class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @date = DateTime.now.strftime("%m月%d日")
    @users = User.all
  end

  def new 
    @question = Question.new
    @date = DateTime.now.strftime("%m月%d日")
    @users = User.all
  end

  def create
    Question.create(question_params)
    redirect_to questions_path
  end

  def show
    @date = DateTime.now.strftime("%m月%d日")
    @users = User.all
    @question = Question.find(params[:id])
    @questioncomment = Questioncomment.new
    @questioncomments = @question.questioncomments.includes(:user)
  end

  private
  def question_params
    params.require(:question).permit(:title).merge(user_id: current_user.id)
  end
end
