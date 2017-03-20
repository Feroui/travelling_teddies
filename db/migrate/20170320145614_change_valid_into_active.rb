class ChangeValidIntoActive < ActiveRecord::Migration[5.0]
  def change
    rename_column :teddies, :valid, :active
  end
end
