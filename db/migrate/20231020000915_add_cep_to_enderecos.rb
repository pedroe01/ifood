class AddCepToEnderecos < ActiveRecord::Migration[7.0]
  def change
    add_column :enderecos, :cep, :string
  end
end
