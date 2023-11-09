class Itenspedido < ApplicationRecord
  belongs_to :produto
  belongs_to :carrinho

  def total
    produto.valor * qtd
  end
end
