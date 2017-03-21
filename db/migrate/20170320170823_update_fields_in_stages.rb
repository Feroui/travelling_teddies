class UpdateFieldsInStages < ActiveRecord::Migration[5.0]
  def change
    rename_column :stages, :lat, :latitude
    rename_column :stages, :long, :longitude
  end
end
