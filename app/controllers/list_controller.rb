class ListController < ApplicationController
  def list_top
    @goals = Goal.all
  end
end
