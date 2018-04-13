class ChangePeriodToGoals < ActiveRecord::Migration[5.1]
  def change
    change_column :Goals, :period, :text
  end
end
