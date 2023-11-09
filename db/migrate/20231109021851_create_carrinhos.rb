class CreateCarrinhos < ActiveRecord::Migration[7.0]
  def change
    create_table :carrinhos do |t|

      t.timestamps
    end
  end
end
