class CreateUserData < ActiveRecord::Migration[5.1]
  def change
    create_table :user_data do |t|
      t.text :start_date
      t.integer :avg_length
      t.integer :avg_cycle

      t.timestamps
    end
  end
end
