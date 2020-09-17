class MessagesController < ApplicationController
  def new

  end

  def create
    @target.save
  end

  def index
  end
end
