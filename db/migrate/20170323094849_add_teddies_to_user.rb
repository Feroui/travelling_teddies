class AddTeddiesToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :followers, :user, foreign_key: true, index: true
    add_reference :followers, :teddy, foreign_key: true, index: true
  end
end
