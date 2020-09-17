class GroupsController < ApplicationController
  def new
    # @group.new
  end

  def create
    @group.save
  end
end
