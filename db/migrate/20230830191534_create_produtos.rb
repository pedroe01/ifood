class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :img
      t.integer :qtd

      t.timestamps
    end
  end
end
