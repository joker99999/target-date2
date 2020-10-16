class SharecommentsController < ApplicationController
  def create
    Sharecomment.create(sharecomment_params)
  end

  private
  def sharecomment_params
    params.require(:sharecomment).permit(:text).merge(user_id: current_user.id, share_id: params[:share_id])
  end
end
