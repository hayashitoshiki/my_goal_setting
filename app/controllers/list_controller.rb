class ListController < ApplicationController
  def list_top
    @goals = Goal.all
  end

  def goal_details
    @goal = Goal.find_by(id: params[:id])
  end


  def destroy
    @goal = Goal.find_by(id:params[:id])
    @goal.destroy
      redirect_to("/list/top")
  end
end
