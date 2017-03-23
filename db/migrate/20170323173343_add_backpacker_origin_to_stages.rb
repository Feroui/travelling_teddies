class AddBackpackerOriginToStages < ActiveRecord::Migration[5.0]
  def change
    add_column :stages, :backpacker_origin, :string
  end
end
