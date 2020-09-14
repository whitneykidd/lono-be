class AddDefaultToDays < ActiveRecord::Migration[5.1]
  def change
    change_column_default :days, :high_risk, false
  end
end
