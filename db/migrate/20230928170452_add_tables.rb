class AddTables < ActiveRecord::Migration[7.0]
  def change
    #cria tabela de fomas de pagamento
    create_table :formapagamento do |t|
      t.string :forma_pagamento
      t.string :numero_cartao
      t.string :validade_cartao
      t.string :codigo_seguranca_cartao
      t.string :nome_impresso_cartao
      t.belongs_to :users
      t.timestamps
    end

    #cria tabela parceiros
    create_table :parceiros do |t|
      t.string :nome
      t.float :nota 
      t.string :avaliacao 
      t.float :valor_frete
      t.timestamps
    end

    #cria tabela pedidos 
    create_table :pedidos do |t|
      t.float :valor
      t.belongs_to :users
      t.belongs_to :enderecos
      t.belongs_to :parceiros
      t.timestamps
    end

    #criar tabela itens pedidos
    create_table :itenspedido do |t|
      t.belongs_to :pedidos
      t.belongs_to :produtos
      t.timestamps
    end
  end
end
