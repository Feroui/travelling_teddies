class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.float :lat
      t.float :long
      t.datetime :created_at
      t.date :date
      t.text :content
      t.string :backpacker_name
      t.text :backpacker_description
      t.references :teddy, foreign_key: true

      t.timestamps
    end
  end
end
