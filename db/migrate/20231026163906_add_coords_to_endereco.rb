class AddCoordsToEndereco < ActiveRecord::Migration[7.0]
  def change
    add_column :enderecos, :lat, :float
    add_column :enderecos, :lon, :float
  end
end
