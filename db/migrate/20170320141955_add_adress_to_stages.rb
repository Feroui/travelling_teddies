class AddAdressToStages < ActiveRecord::Migration[5.0]
  def change
    add_column :stages, :adress, :string
  end
end
