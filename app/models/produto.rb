class Produto < ApplicationRecord
  def self.search(search)
    if search
      produto = Produto.where("nome LIKE ?", "%" + search + "%" )
      if produto
        self.where(id: produto)
      else
        Produto.all
      end
    else
      Produto.all
    end
  end
end
