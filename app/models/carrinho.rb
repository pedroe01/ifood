class Carrinho < ApplicationRecord
  has_many :itenspedido
  has_many :produto, through: :itenspedido

  def total
    itenspedido.to_a.sum { |item| item.total }
  end
end
