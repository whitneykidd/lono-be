class AddUserToDays < ActiveRecord::Migration[5.1]
  def change
    add_reference :days, :user, foreign_key: true
  end
end
