class AddDefaultToUserAverages < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :avg_period, 6
    change_column_default :users, :avg_cycle, 28
  end
end
