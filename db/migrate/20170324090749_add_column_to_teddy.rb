class AddColumnToTeddy < ActiveRecord::Migration[5.0]
  def change
    add_column :teddies, :personality, :string
    add_column :teddies, :origin, :string
    add_column :teddies, :gender, :string
  end
end
