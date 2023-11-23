class CreateFormapagamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :formapagamentos do |t|
      t.string :forma_pagamento
      t.string :numero_cartao
      t.string :validade_cartao
      t.string :codseguranca
      t.string :nomeimpresso
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
