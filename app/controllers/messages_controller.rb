class MessagesController < ApplicationController
  def new

  end

  def create
    @target.save
  end

  def index
    @date = DateTime.now.strftime("%m月%d日")
  end

  
end
