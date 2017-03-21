class DeletePhoto < ActiveRecord::Migration[5.0]
  def change
    remove_column :stages, :photo
    remove_column :teddies, :photo
    remove_column :users, :photo
  end
end
