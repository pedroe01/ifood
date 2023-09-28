class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.string :endereco
      t.string :tipo_endereco
      t.string :complemento
      t.integer :numero
      t.belongs_to :users, :null => true
      t.belongs_to :parceiros, :null => true

      t.timestamps
    end
  end
end
