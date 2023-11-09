class ApplicationController < ActionController::Base
  before_action :set_render_carrinho
  before_action :iniciar_carrinho

  def set_render_carrinho
    @render_carrinho = true
  end

  def iniciar_carrinho
    @carrinho ||= Carrinho.find_by(id: session[:carrinho_id])

    if @carrinho.nil?
      @carrinho = Carrinho.create
      session[:carrinho_id] = @carrinho.id
    end
  end
end
