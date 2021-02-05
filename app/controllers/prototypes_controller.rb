class PrototypesController < ApplicationController

  def new
    @prototype = Prototype.new
  end

  def create
　end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end

end