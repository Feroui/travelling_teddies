class AddCityAndCountryToStages < ActiveRecord::Migration[5.0]
  def change
    add_column :stages, :city, :string
    add_column :stages, :country, :string
  end
end
