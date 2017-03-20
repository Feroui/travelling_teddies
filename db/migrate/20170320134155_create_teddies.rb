class CreateTeddies < ActiveRecord::Migration[5.0]
  def change
    create_table :teddies do |t|
      t.string :name
      t.text :description
      t.references :user, foreign_key: true
      t.boolean :valid

      t.timestamps
    end
  end
end
