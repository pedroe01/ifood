class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :img
      t.string :descricao
      t.decimal :valor
      t.string :categoria

      t.timestamps
    end
  end
end
