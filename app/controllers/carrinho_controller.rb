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

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [
          turbo_stream.replace('carrinho', partial: 'carrinho/carrinho', locals: {carrinho: @carrinho}),
          turbo_stream.replace(@produto),
        ]
      end
    end
  end

  def remove
    Itenspedido.find_by(id: params[:id]).destroy
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [
          turbo_stream.replace('carrinho', partial: 'carrinho/carrinho', locals: {carrinho: @carrinho}),
        ]
      end
    end
  end
end
