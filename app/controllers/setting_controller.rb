class SettingController < ApplicationController
  require "date"

  def setting_top
  end

  def goal_set
  end
@@sa
  def day_setting
    today = Date.today
    @@sa = (Date.strptime(params[:goal_day],'%Y-%m-%d') - today).numerator
    @dates = []

    for i in 1..@@sa do
        @dates[i-1] = today.strftime("%m月%d日")
        today += 1
      end

    @goal_final = params[:goal_final]
    @goal_day =(Date.strptime(params[:goal_day],'%Y-%m-%d')).strftime("%m月%d日")
  end

  def test
    @goal_days = Array.new
    i = 0

    params[:goal_day].each do |a|
      if a.present?
        days =  Date.today + i
        @goal_days << [days.strftime("%m月%d日"),a]
      end
      i+=1
    end
    p @goal_days
  end
end
