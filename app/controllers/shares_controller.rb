class SharesController < ApplicationController
  def new
    @share = Share.new
  end

  def create
    # @share = Share.save
    Share.create(share_params)
  end

  def index
  end

  private
  def share_params
    params.require(:share).permit(:share)
  end
end
