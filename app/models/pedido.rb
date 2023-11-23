class Pedido < ApplicationRecord
  has_many :itenspedido
  has_many :endereco, through: :user
  has_many :produto, through: :itenspedido

end
