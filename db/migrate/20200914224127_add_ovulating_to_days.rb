class AddOvulatingToDays < ActiveRecord::Migration[5.1]
  def change
    add_column :days, :ovulating, :boolean, default: false
  end
end
