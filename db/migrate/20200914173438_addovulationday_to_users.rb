class AddovulationdayToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :day_of_ovulation, :string
  end
end
