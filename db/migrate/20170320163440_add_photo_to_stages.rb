class AddPhotoToStages < ActiveRecord::Migration[5.0]
  def change
    add_column :stages, :photo, :string
  end
end
