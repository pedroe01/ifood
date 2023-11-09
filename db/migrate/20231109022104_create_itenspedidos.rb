class CreateItenspedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :itenspedidos do |t|
      t.belongs_to :produto, null: false, foreign_key: true
      t.belongs_to :carrinho, null: false, foreign_key: true
      t.integer :qtd

      t.timestamps
    end
  end
end
