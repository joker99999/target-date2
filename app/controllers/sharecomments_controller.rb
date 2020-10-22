class SharecommentsController < ApplicationController

  # def new
  #   @sharecomment = Sharecommnt.new
  # end

  def create
    @sharecomment = Sharecomment.new(sharecomment_params)
    @sharecomment.user_id = current_user.id
    if @sharecomment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def sharecomment_params
    params.require(:sharecomment).permit(:text)
  end
end
