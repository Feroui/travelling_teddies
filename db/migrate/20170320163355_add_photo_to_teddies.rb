class AddPhotoToTeddies < ActiveRecord::Migration[5.0]
  def change
    add_column :teddies, :photo, :string
  end
end
