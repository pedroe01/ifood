class CarrinhoController < ApplicationController
  def show
  end

  def add
    @produto = Produto.find_by(id: params[:id])
    qtd = params[:qtd].to_i
    current_item = @carrinho.itenspedido.find_by(produto_id: @produto.id)

    if current_item && qtd > 0
      current_item.update(qtd:)
    elsif qtd <= 0
      current_item.destroy
    else
      @carrinho.itenspedido.create(produto: @produto, qtd:)
    end
  end

  def remove
    Itenspedido.find_by(id: params[:id]).destroy
  end
end
