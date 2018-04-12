class SettingController < ApplicationController
  require "date"

  def setting_top
  end

  def goal_set
  end
@@sa
@@goal_final
@@goal_fainal_date
def day_setting
    today = Date.today
    @@sa = (Date.strptime(params[:goal_day],'%Y-%m-%d') - today).numerator
    @dates = []
    @@goal_final = params[:goal_final]
    @@goal_fainal_date = params[:goal_day]
    @goal_finals =  @@goal_final

    for i in 1..@@sa do
      @dates[i-1] = today.strftime("%m月%d日")
      today += 1
    end

    @goal_day =(Date.strptime(params[:goal_day],'%Y-%m-%d')).strftime("%m月%d日")
  end

  def create
    final = @@goal_final
    day = Array.new
    i = 0
    b = "テスト"

    params[:goal_day].each do |a|
      if a.present?
        days =  Date.today + i
        day << [days.strftime("%m月%d日"),a]
      end
      i+=1
    end

    goal_set = Goal.new(goals:final, days:day)
    goal_set.save
    p goal_set
    redirect_to("/setting/test")
  end

  def test

     finals = @@goal_final
     @goal_days = Goal.where(goals:finals)
   end
end
