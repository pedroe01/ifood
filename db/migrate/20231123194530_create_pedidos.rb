class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|

      t.timestamps
    end
  end
end
