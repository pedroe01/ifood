class ChangeColumnUsersId < ActiveRecord::Migration[7.0]
  def change
    change_table :enderecos do |t|
      t.belongs_to :user, null: false, foreign_key: true
    end

    remove_column :enderecos, :users_id
  end
end
