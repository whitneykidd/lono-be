class AdddefaultToUserOvulation < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :day_of_ovulation, 14

  end
end
