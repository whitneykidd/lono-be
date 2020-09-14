class RenameUserAvgLengthToAvgPeriod < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :avg_length, :avg_period
  end
end
