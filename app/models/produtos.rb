class Produtos < ApplicationRecord
  has_many :itenspedido
  has_many :carrinhos, through: :itenspedido

  self.table_name = "produtos"
end
