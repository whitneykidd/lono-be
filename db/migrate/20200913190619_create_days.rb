class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.text :date
      t.float :temperature
      t.boolean :high_risk

      t.timestamps
    end
  end
end
