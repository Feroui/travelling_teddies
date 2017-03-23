class AddCodeToTeddies < ActiveRecord::Migration[5.0]
  def change
    add_column :teddies, :code, :string
    add_index :teddies, :code
  end
end
