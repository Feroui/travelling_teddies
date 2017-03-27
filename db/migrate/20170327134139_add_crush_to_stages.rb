class AddCrushToStages < ActiveRecord::Migration[5.0]
  def change
    add_column :stages, :crush, :string
  end
end
