class AddBackpackerEmailToStages < ActiveRecord::Migration[5.0]
  def change
    add_column :stages, :backpacker_email, :string
  end
end
