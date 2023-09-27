class CreateAddEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.belongs_to :users, foreign_key: true
      t.string :endereco
      t.string :tipo_endereco
      t.string :complemento
      t.string :numero

      t.timestamps
    end
  end
end
