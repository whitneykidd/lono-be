class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :start_date
      t.integer :avg_length
      t.integer :avg_cycle

      t.timestamps
    end
  end
end
